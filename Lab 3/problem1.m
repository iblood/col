x = input("Enter a number")
y = input("Enter a number")
z = input("Enter A Number")

if( x^2 == y^2 + z^2 ||  y^2 == z^2 + x^2 ||  z^2 == y^2 + x^2  ) 
fprintf("The entered values form a pythogoras triplet") 
else 
fprintf("The entered values %d , %d , %d doesnot form a pythogerous triplet" , x, y, z);
end;