function [] = MeshTriangle(x,y,l)
x
y 
l

    if l==0
        fill(x,y,'y');
        
    else
       
        a = [(x(1)+x(2))/2 , (x(2)+x(3))/2 , (x(3)+x(1))/2]
        b = [(y(1)+y(2))/2, (y(2)+y(3))/2,(y(3)+y(1))/2]
        fill(a,b,'m');
        hold
        MeshTriangle([x(1),a(1),a(3)],[y(1),b(1),b(3)],l-1);
        MeshTriangle([x(2),a(1),a(2)],[y(2),b(1),b(2)],l-1);
        MeshTriangle([x(3),a(3),a(2)],[y(3),b(3),b(2)],l-1);
    end
    
end