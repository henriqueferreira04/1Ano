l = float(input('Quantos litros meteu no depósito do seu carro? '))
if l < 40:
    preço = l * 1.40
else:
    preço = (l * 1.40) * 0.9
print('O preço dos {} litros metidos no depósitos no carro ficam a {:.2f} euros.'.format(l, preço))

