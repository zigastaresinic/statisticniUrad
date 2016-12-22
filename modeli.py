import sqlite3
import hashlib

con = sqlite3.connect('statisticni_urad.sqlite3')
con.row_factory = sqlite3.Row

#test
def ime():
    sql = '''select Ime,Priimek from Oseba where Izobrazba = 5'''
    for ime,priimek in con.execute(sql):
        print(ime,priimek)

def dodaj_uporabnika(upIme,geslo,sektor):
    sql = '''insert into Uporabnik (Uporabniško_ime,Geslo) values (?,?)'''
    sql2 = '''insert into Uporabnik_sektor (Uporabnik, Sektor) values (?,?)'''
    geslo = hashlib.md5(geslo.encode()).hexdigest()
    con.execute(sql,[upIme,geslo])
    con.execute(sql2,[upIme,sektor])
    con.commit()



def prijava(upIme, geslo):
    geslo = hashlib.md5(geslo.encode()).hexdigest()
    sql = '''
        select Geslo
        from Uporabnik
        where Uporabniško_ime = ?
          and Geslo = ?;'''
    pravo = con.execute(sql, [upIme, geslo]).fetchone()
    #gledamo ce je none ali ne



def dostop(sektor):
    sql = ''' select Stolpci.Ime
              from Stolpci
              join Sektor_pravice on Stolpci.Id = Sektor_pravice.Stolpec
              join Sektorji on Sektor_pravice.Sektor = Sektorji.Id
              where Sektorji.Sektor = ?; '''
##    sektorji = con.execute(sql, [sektor])
##    sez = []
##    for a in sektorji:
##        a = a[0]
##        sez.append(a)
   

    stolpci_sektorja = ", ".join(r[0] for r in con.execute(sql, [sektor]))
    sez = stolpci_sektorja.split(', ')
    sql = '''SELECT {} FROM Oseba'''.format(stolpci_sektorja)
    for x in con.execute(sql):
        x = dict(x)
        niz = ''
        for i in range(len(sez)):
            niz += x[sez[i]]
        
        print(niz)

    
    
    
    
    



    






    
