from bottle import *
from bottlesession import session
import modeli

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
        return redirect('/pomoc/')

@route('/pomoc/')
def pomoc():
    return 'Narobe ste vnesli geslo.'

@route('/dodaj_uporabnika/')
def dodaj_uporabnika():
    return template('dodaj_uporabnika')

@post('/dodaj_uporabnika/')
def dodaj_uporabnika():
    up = request.forms.uporabnik
    pas = request.forms.geslo
    sek = request.forms.sektor
    if up and pas and sek:
        modeli.dodaj_uporabnika(up,pas,sek)            
    return redirect('/dodaj_uporabnika/')
    
@route('/prijava/')
def prijava():
    return template('prijava')

@route('/<id>/')
def stranSektorja(id):
    if int(id) != sess.read('sektor'):
        return redirect('/')
    return template(str(id))

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

@route('/<id>/vpisi_SQL/')
def vpisi(id):
    if int(id) != sess.read('sektor'):
        return redirect('/')
    return template('vpisi_SQL')
#https://bottlepy.org/docs/dev/tutorial.html#id3

@route('/<id>/baza_osebe/')
def poglejBazo(id):
    if int(id) != sess.read('sektor'):
        return redirect('/')
    ime_sektorja = modeli.sektorIzStevilke(id)
    izpis, stolpci = modeli.dostop(ime_sektorja)
    return template('baza_osebe', izpis = izpis, stolpci = stolpci , stSektorja = id)
run(debug = True)
