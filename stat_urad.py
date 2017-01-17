from bottle import *
from bottlesession import session
import modeli,time

sess = session()
sess.set('upIme', '')
sess.set('sektor', '')

@route('/static/<file>')
def static(file):
    return static_file(file, 'static/')

@route('/')
def index():
    return template('zacetna_stran')

@post('/')
def prijavare():
    upIme = request.forms.upIme
    geslo = request.forms.geslo
    aliPravo = modeli.prijava(upIme,geslo)
    #print(upIme,geslo,aliPravo)
    if aliPravo is not None:
        sektor = modeli.poisciSektor(upIme) ##vrnemo sektor in st vseh sektorjev za zanko,
                                            ##ce se v prihodnosti odločimo, da dodamo še kak sektor
        sess.set('upIme', upIme)
        sess.set('sektor', sektor)
        return redirect('/{0}/'.format(sektor))
    else:
        return redirect('/error/')

@route('/error/')
def pomoc():
    return template('error.tpl')

@route('/4/dodaj_uporabnika/')
def dodaj_uporabnika():
    return template('dodaj_uporabnika')

@post('/4/dodaj_uporabnika/')
def dodaj_uporabnika1():
    up = request.forms.uporabnik
    pas = request.forms.geslo
    sek = request.forms.sektor
    if up and pas and sek:
        modeli.dodaj_uporabnika(up,pas,sek)            
    return redirect('/4/dodaj_uporabnika/')
    
@route('/prijava/')
def prijava():
    return template('prijava')

@route('/<id>/')
def stranSektorja(id):
    if int(id) != sess.read('sektor'):
        return redirect('/')
    return template(str(id), stSektorja = id)

@route('/odjava/')
def odjava():
    sess.set('upIme', '')
    sess.set('sektor', '')
    #odstranimo piskotke, da se ne da priti direktno do sektorja
    return redirect('/')
@route('/lokacija/')
def lok():
    return template('lokacija')

@route('/kontakt/')
def kon():
    return template('kontakt')

@route('/<id:int>/vpisi_SQL/')
def vpisiSQL(id):
    if int(id) != sess.read('sektor'):
        return redirect('/')
    return template('vpisi_SQL',stSektorja = id, aliIzpisem = False)

@post('/<id:int>/vpisi_SQL/')
def vpisiSQLp(id):
    iskanje = request.forms.SQL
    izpis, stolpci = modeli.poizvedba(iskanje, id)
    return template('vpisi_SQL', stSektorja = id, izpis = izpis, stolpci = stolpci, aliIzpisem = True)


@route('/<id:int>/baza_osebe/')
def poglejBazo(id):
    if int(id) != sess.read('sektor'):
        return redirect('/')
    ime_sektorja = modeli.sektorIzStevilke(id)
    izpis, stolpci = modeli.dostop(ime_sektorja) 
    return template('baza_osebe', izpis=izpis, stolpci = stolpci, stSektorja = id)

@route('/4/baza_uporabniki/')
def poglejBazoUporabnika():
    if 4 != sess.read('sektor'):
        return redirect('/')
    izpis, stolpci = modeli.uporabnik()
    b = 'base_admin'
        
    return template('baza_uporabniki', izpis=izpis, stolpci=stolpci, stSektorja=4)

@post('/4/baza_uporabniki/')
def odstraniUporabnika1():
    upIme = request.forms.upime
    modeli.odstraniUporabnika(upIme)           
    return redirect('/4/baza_uporabniki/')

@route('/4/dodaj_osebo/')
def dodaj_osebo():
    return template('dodaj_osebo')


@post('/4/dodaj_osebo/')
def dodaj_osebo1():
    ime = request.forms.ime
    priimek = request.forms.priimek
    spol = request.forms.spol
    datumR = request.forms.datumR
    datumS = request.forms.datumS
    regija = request.forms.regija
    status = request.forms.status
    stan = request.forms.stan
    izobrazba = request.forms.izobrazba
    if datumS == '':
        datumS = None
    modeli.dodajOsebo(ime, priimek, spol, datumR, datumS, regija, status, stan, izobrazba)            
    return redirect('/4/dodaj_osebo/')

run(debug = True)
