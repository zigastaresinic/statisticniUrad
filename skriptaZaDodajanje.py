import csv
import random
from datetime import date
odpri = open('osebe.csv','w')
statusi = ['študent', 'zaposlen', 'brezposeln']
zakonski_stanovi = ['samski','poročen','vdovel','ločen','skupnost']
regije = ['goriška', 'gorenjska', 'obalno-kraška', 'primorsko-notranjska',
          'osrednjeslovenska', 'zasavska', 'jugovzhodna Slovenija', 'posavska', 'savinjska', 'koroška', 'podravska', 'pomurska']
with open('osnova.csv') as f:
    reader = csv.DictReader(f)
    writer = csv.DictWriter(odpri,fieldnames=['Ime','Priimek', 'Spol',
                                                   'Datum_rojstva','Datum_smrti', 'Regija',
                                                   'Status', 'Zakonski_stan','Izobrazba'])
    writer.writeheader()
    for row in reader:
        regija = random.choice(regije)
        zakonski_stan = random.choice(zakonski_stanovi)
        status = random.choice(statusi)
        if row['Datum_rojstva'] > row['Datum_smrti'] and row['Datum_smrti'] != '':
            row['Datum_rojstva'],row['Datum_smrti']= row['Datum_smrti'],row['Datum_rojstva']
        kajPoIzobrazbi = random.randint(1,1000)
        if 1 <= kajPoIzobrazbi <= 50:
            izobrazba = '1'
        elif 50 < kajPoIzobrazbi <= 150:
            izobrazba = '2'            
        elif  150 < kajPoIzobrazbi <= 700:
            izobrazba = random.choice(['3','4','5'])
        elif 700 < kajPoIzobrazbi <= 900:
            izobrazba = random.choice(['6.1','6.2'])
        elif 900 < kajPoIzobrazbi <= 960:
            izobrazba = '7'
        else:
            izobrazba = random.choice(['8.1','8.2'])
        
        
        letos = date.today().year
        starost = letos-int(row['Datum_rojstva'][0:4])
        if starost < 6:
            izobrazba = '1'
            status = 'otrok'
        elif 6<= starost <= 15:
            izobrazba = '1'
            status = 'OŠ'
        elif 16<= starost <= 18:
            izobrazba = '2'
            status = 'SŠ'
        elif 30 <= starost < 64 :
            status = random.choice(statusi[1::])
        elif starost >= 64:
            status = 'upokojen'
        
        if status == 'študent':
            izobrazba = '5'
        if row['Datum_smrti'] != '':
            zakonski_stan = 'pokojni'
            status = 'pokojni'
        if starost < 18:
            zakonski_stan = 'otrok'

        if row['Spol'] == 'Z':
            row['Spol'] = 'Ž'
        
        row['Status'] = status
        row['Zakonski_stan'] = zakonski_stan
        row['Izobrazba']= izobrazba
        row['Regija'] = regija
        writer.writerow(row)
        

        
odpri.close()


