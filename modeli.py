import sqlite3
import hashlib

con = sqlite3.connect('statisticni_urad.sqlite3')

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



    
