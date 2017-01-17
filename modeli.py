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



def dostop(sektor):
    sql = ''' select Stolpci.Ime
              from Stolpci
              join Sektor_pravice on Stolpci.Id = Sektor_pravice.Stolpec
              join Sektorji on Sektor_pravice.Sektor = Sektorji.Id
              where Sektorji.Sektor = ?;
              '''

    stolpci = [r[0] for r in con.execute(sql, [sektor]).fetchall()]
    stolpci_sektorja = ", ".join(stolpci)
    sez = stolpci_sektorja.split(', ')
    sql = '''SELECT {} FROM Oseba'''.format(stolpci_sektorja)
##    for x in con.execute(sql):
##        x = dict(x)
##        niz = ''
##        for i in range(len(sez)):
##            nekej = x[sez[i]]
##            if nekej == None:
##                nekej = ''            
##            niz += str(nekej)+',' #str zaradi izobrazbe
##        
##        print(niz)
    return (list(con.execute(sql)), stolpci)

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
    sql = ''' select *
              from Uporabnik'''
    
    stolpci=['Uporabniško_ime', 'Geslo', 'Sektor']
    return (list(con.execute(sql)),stolpci)


def odstraniUporabnika(upIme):
    sql = ''' DELETE from Uporabnik
              WHERE Uporabniško_ime = ? '''

    con.execute(sql,[upIme])
    con.commit()

    
##import datatime
##
##def abc():
##    sql = '''insert into Poizvedbe (Ime, Opis, SQL_stavek, Zadnja_uporaba) values (?,?,?,?)'''
##    #sql2 = '''insert into Sektor_poizvedbe (Sektor, Poizvedba) values (?, ?)'''
##    zadnja=datatime.now()
##    print(zadnja)
##    
    
    



    







