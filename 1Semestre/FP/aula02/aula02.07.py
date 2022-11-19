altura = float(input('Altura(m): '))
peso = float(input('Peso(kg): '))

imc = peso / (altura**2)

if imc < 18.5:
    cat = 'Magro'
elif imc < 25:
    cat = 'Saudável'
elif imc < 30:
    cat = 'Forte'
else:
    cat = 'Obeso'
print('O seu IMC é {:.2f}, que corresponde à categoria {}.'.format(imc, cat))
