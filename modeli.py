import sqlite3
import hashlib

con = sqlite3.connect('statisticni_urad.sqlite3')
con.row_factory = sqlite3.Row

#test
def ime():
    sql = '''select Ime,Priimek from Oseba where Izobrazba = 5'''
    for ime,priimek in con.execute(sql):
        print(ime,priimek)

def koda_gesla(geslo):
    geslo = hashlib.md5(geslo.encode()).hexdigest()
    return geslo

def dodaj_uporabnika(upIme,geslo,sektor):
    sql =   '''
             insert into Uporabnik
             (Uporabniško_ime,Geslo,Sektor)
             values (?,?,?)
            '''
    con.execute(sql,[upIme,koda_gesla(geslo),sektor])
    con.commit()



def prijava(upIme, geslo):
    sql = '''
        select Geslo
        from Uporabnik
        where Uporabniško_ime = ?
          and Geslo = ?;
          '''
    pravo = con.execute(sql, [upIme, koda_gesla(geslo)]).fetchone()
    #ce je none ali ne
    return pravo

def stolpci(sektor):
    sql = ''' select Stolpci.Ime
              from Stolpci
              join Sektor_pravice on Stolpci.Id = Sektor_pravice.Stolpec
              join Sektorji on Sektor_pravice.Sektor = Sektorji.Id
              where Sektorji.Sektor = ?;
              '''

    stolpci = [r[0] for r in con.execute(sql, [sektor]).fetchall()]
    return stolpci


def dostop(sektor):
    stolp = stolpci(sektor)
    stolpci_sektorja = ", ".join(stolp)
    sez = stolpci_sektorja.split(', ')
    sql = '''SELECT {} FROM Oseba'''.format(stolpci_sektorja)
    return (list(con.execute(sql)), stolp)

def dodajOsebo(ime, priimek, spol, datumR, datumS, regija, status, stan, izobrazba):
    #za admina
    sql = '''
          insert into Oseba
          (Ime,Priimek, Spol,Datum_rojstva, Datum_smrti, Regija, Status, Zakonski_stan, Izobrazba)
          values (?,?,?,?,?,?,?,?,?)
          '''
    con.execute(sql,[ime,priimek, spol, datumR, datumS, regija, status, stan, izobrazba])
    con.commit()

def poisciSektor(upIme):
    sql = '''SELECT Sektor
             FROM Uporabnik
             WHERE Uporabnik.Uporabniško_ime= ?;'''
    sql2 = '''SELECT count(*) AS st
              FROM Sektorji;'''
    stSektorjev = con.execute(sql2).fetchone()['st']
    sektor = con.execute(sql,[upIme]).fetchone()['Sektor']
    return sektor


def sektorIzStevilke(id):
    sql = '''SELECT Sektor
             FROM Sektorji
             WHERE Sektorji.id = ?'''
    return con.execute(sql,[id]).fetchone()['Sektor']


def uporabnik():
    sql = ''' SELECT *
              FROM Uporabnik'''
    
    stolpci=['Uporabniško_ime', 'Geslo', 'Sektor']
    return (list(con.execute(sql)),stolpci)


def odstraniUporabnika(upIme):
    sql = ''' DELETE from Uporabnik
              WHERE Uporabniško_ime = ? '''

    con.execute(sql,[upIme])
    con.commit()

def poizvedba(stolpci, where, groupby, having, orderby,pomozen):
    stolpci_sektorja = ", ".join(stolpci)
    sql = '''SELECT {} FROM Oseba'''.format(stolpci_sektorja) #zacetek
    if where != '':
        if 'SELECT' not in where and 'INSERT' not in where and 'DELETE' not in where:
            sql += ''' WHERE {0}'''.format(where)
    if len(groupby) != 0:
        gb = ",".join(groupby)
        sql += ''' GROUP BY {0} '''.format(gb)
    if having != '':
        if 'SELECT' not in having and 'INSERT' not in having and 'DELETE' not in having:
            sql += ''' HAVING {0}'''.format(having)
    if len(orderby) != 0:
        ob = ",".join(orderby)
        sql += ''' ORDER BY {0} {1}'''.format(ob, pomozen)
    sql += ''';'''
    return (list(con.execute(sql)), stolpci)


def spremeni_geslo(uporabnik, staro_geslo, novo_geslo, ponovi_geslo):
    sql = ''' SELECT Geslo
              FROM Uporabnik
              WHERE Uporabniško_ime = ? ;'''
    geslo = con.execute(sql, [uporabnik]).fetchone()['Geslo']
    if koda_gesla(staro_geslo) == geslo:
        if novo_geslo == ponovi_geslo:
            novo = koda_gesla(novo_geslo)
            sql2 = ''' UPDATE Uporabnik
                       SET Geslo = ?
                       WHERE Uporabniško_ime = ? ;'''
            
            con.execute(sql2, [novo, uporabnik])
            con.commit()
        else:
            raise Exception('Novo geslo se ne ujema!')
    else:
        raise Exception('Staro geslo se ne ujema!')
    
    
##import datatime
##
##def abc():
##    sql = '''insert into Poizvedbe (Ime, Opis, SQL_stavek, Zadnja_uporaba) values (?,?,?,?)'''
##    #sql2 = '''insert into Sektor_poizvedbe (Sektor, Poizvedba) values (?, ?)'''
##    zadnja=datatime.now()
##    print(zadnja)
##    
    
    



    







