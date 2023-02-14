function[] = towerofhanoiiter(n)
    %the poles are assigned default as x,y,z with destination being y and the starting point being x
    
    if n > 0 && n<2
        fprintf("moved the disk 1 from x to y");
    else
        %running while function to move n-1 disks to the helper position
        %moving the last disk to its destination
        %and bringing back all the remaining disks to the destination position
    end

end