# A teenager is a person between 13 and 19 years old, inclusive.
# A child is under 13.  A grown-up is 20 or more.
# This program outputs the age category for a given input age.
# It has a semantic error.  Can you find it?
# Which values of age produce the output "grown-up"?
# Correct the error.
# Can you simplify the code to avoid redundant conditions?

age = int(input("Age? "))

if age<0:
    print('Error age must be higher than 1')

print('Age ',age)

if age<13:
    tipo= 'Crianca'
    

elif 13<=age<20:
    tipo = 'Tenager'
    

else:
    tipo= 'grownup'

print(tipo)


    

