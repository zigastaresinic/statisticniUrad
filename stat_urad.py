from bottle import *
import modeli

@route('/')
def index():
    return template('zacetna_stran')

@route('/pomoc/')
def pomoc():
    return 'Pojdi na stran /delitelji/xxx/ za delitelje stevila xxx.'

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


run(debug = True)
