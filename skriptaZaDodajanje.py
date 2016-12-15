import csv
import random
from datetime import date
odpri = open('osebe.csv','w')
statusi = ['ST', 'ZA', 'BR'] # ST = študent, ZA = zaposlen, BR = brezposeln 
zakonski_stanovi = ['SA','PO','VD','LO','SK'] # SA = samski, PO = poročen, VD = vdovel, LO = ločen, SK = skupnost
regije = ['goriška', 'gorenjska', 'obalno-kraška', 'primorsko-notranjska',
          'osrednjeslovenska', 'zasavska', 'jugovzhodna Slovenija', 'posavska', 'savinjska', 'koroška', 'podravska', 'pomurska']
# na datoteki osnova se nahajajo osebe, ki že imajo predpisano ime, priimek, spol, datum rojstva in datum smrti (če obstaja)
with open('osnova.csv') as f:
    reader = csv.DictReader(f)
    writer = csv.DictWriter(odpri,fieldnames=['Ime','Priimek', 'Spol',
                                                   'Datum_rojstva','Datum_smrti', 'Regija',
                                                   'Status', 'Zakonski_stan','Izobrazba'])
   
       
    for row in reader:
        regija = random.choice(regije) #naključno dodamo regijo
        zakonski_stan = random.choice(zakonski_stanovi) #naključno dodamo zanski stan
        status = random.choice(statusi) #naključno dodamo status

        #v primeru, da je datum smrti manjši od datuma rojstva zamenjamo njun vrstni red
        if row['Datum_rojstva'] > row['Datum_smrti'] and row['Datum_smrti'] != '':
            row['Datum_rojstva'],row['Datum_smrti']= row['Datum_smrti'],row['Datum_rojstva']

        #izobrazbo porazdelimo "enakomerno"
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

        
            
        #izobrazbo in status dodeljujemo glede na starost osebe
        letos = date.today().year
        starost = letos-int(row['Datum_rojstva'][0:4]) #starost posameznika
        if row['Datum_smrti'] != '':
            starost = int(row['Datum_smrti'][0:4])-int(row['Datum_rojstva'][0:4])

        if starost < 6:
            izobrazba = '1'
            status = 'OT'
        elif 6<= starost <= 15:
            izobrazba = '1'
            status = 'OS'
        elif 16<= starost <= 18:
            izobrazba = '2'
            status = 'SS'
        elif 30 <= starost < 64:
            status = random.choice(statusi[1::])
        elif starost >= 64:
            status = 'UP'


        
        if status == 'ST':
            izobrazba = '5'

        if row['Datum_smrti'] != '':
            zakonski_stan = 'POK'
            status = 'POK'
            
        if starost < 18 and row['Datum_smrti'] =='':
            zakonski_stan = 'OT'

        if row['Spol'] == 'Z':
            row['Spol'] = 'Ž'
        
        row['Status'] = status
        row['Zakonski_stan'] = zakonski_stan
        row['Izobrazba']= izobrazba
        row['Regija'] = regija
        writer.writerow(row)
        

        
odpri.close()


