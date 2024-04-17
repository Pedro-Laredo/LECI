atp1 = float(input('Introduza a nota da atp1 '))

atp2 = float(input('Introduza a nota da atp2 '))

ap1 = float(input('Introduza a nota da ap1 '))

ap2 = float(input('Introduza a nota da ap2 '))

if (atp1 or atp2 or ap1 or ap2)<6.4 or (atp1*0.15 + atp2*0.15 + ap1*0.35 + ap2*0.35)<9.5:
    notafinal = 'Reprovado por nota minima'
    print (notafinal)


    recursoatp = float(input('Introduza a nota de recurso da atp'))
    recursoap= float(input('Introduza a nota de recurso de ap'))
    notarecurso =( max(atp1,atp2,recursoatp))*0.3 + (max(ap1,ap2,recursoap))*0.7

    
    if notarecurso<9.5:
        estado= 'reprovado'
        print('Reprovado com ', notarecurso)
    
    else:
        int(notarecurso)
        print(f'aprovado com {notarecurso} valores')



else:
    notafinal = (((atp1+atp2)/2)*0.3) + ((ap1+ap2)/2)*0.70
    print(f'aprovado com {notafinal} valores')

    





#elif (atp1*0.15 + atp2*0.15 + ap1*0.35 + ap2*0.35)<9.5:
    #notafinal = 'Reprovado por nota minima'