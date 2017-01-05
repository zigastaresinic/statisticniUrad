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
        (sektor,stSek) = modeli.poisciSektor(upIme) ##vrnemo sektor in st vseh sektorjev za zanko,
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
    return template('dodaj_uporabnika', test=42)

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
def admin(id):
    if int(id) != sess.read('sektor'):
        return redirect('/')
    return template(str(id))


#https://bottlepy.org/docs/dev/tutorial.html#id3
run(debug = True)
