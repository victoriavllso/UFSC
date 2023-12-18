while True:
    numero = input()
    if numero[0] == '-':
        break
    if numero[:2] == '0x': #verifico se os dois primeiros digitos são 0x
        conversor_hex_para_dec = int(numero,16) #converto o numero decimal para hex
        print(conversor_hex_para_dec)
    else:
        conversor_dec_para_hex = hex(int(numero))
        conversor_dec_para_hex = conversor_dec_para_hex[:2] + conversor_dec_para_hex[2:].upper()
        print(conversor_dec_para_hex)
