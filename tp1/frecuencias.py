sec = input("Introduce una secuencia de ADN o ARN: ")
sec = sec.upper()    
a = 0
t = 0
g = 0
c = 0
u = 0
for i in sec:
    if i == "A":
        a = a+1
    elif i == "T":
        t = t+1
    elif i == "G":
        g = g+1
    elif i == "C":
        c = c+1
    elif i == "U":
        u = u+1
    else:
        print("El caracter", i, "no es válido en una secuencia de ADN o ARN")
print("Las frecuencias de los nucleotidos en la secuencia son A:", a, "T:", t, "G:", g, "C:", c, "U:", u)