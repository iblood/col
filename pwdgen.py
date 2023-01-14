import numpy as nmp
import math
cont = input('App / Website name you are going to use')
len = int(input('Length of your password'))
str  = 'abcdefghijklmnopqrstuvwxyz'
num = '0123456789'
spl_c = '!@#$%:;><.,/?|'
num_s = bool(input('Include numbers 0 | 1'))
spl_s = bool(input('Include special chars 0|1'))
a = ''
if num_s == 1 and spl_s == 1:
    for it in range(len):
     ran = nmp.random.randint(5)
        if ran == 1:
            a(it) = num(floor(10*nmp.random.rand(1)))
        elif ran == 5:
            a(it) = str(floor(26*nmp.random.rand(1)))
        else:
            a(it) = spl_c(floor(14*nmp.random.rand(1)))

    