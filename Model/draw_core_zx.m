function [] = draw_core_zx(rx,ry,rz,Psi,iy,den0,r0)
    

    [ZZ, XX] = meshgrid(rz,rx);
    [resp,resm] = detect_core(squeeze(Psi(iy,:,:)),ZZ, XX);
    hold on
    for i=1:size(resp,1)
        B = squeeze(Psi(iy, find(rx==(resp(i,2))), find(rz==(resp(i,1))) ));
        if ( ((abs(B)^2) >= den0) && ((resp(i,2)^2+ry(iy)^2)<r0^2))
           scatter3(resp(i,2),0*resp(i,2)+ry(iy), resp(i,1),'MarkerEdgeColor','black','MarkerFaceColor','black'); 
        end  
    end
    for i=1:size(resm,1)
        C = squeeze(Psi(iy, find(rx==(resm(i,2))), find(rz==(resm(i,1))) ));
        if (((abs(C)^2) >= den0) && ((resm(i,2)^2+ry(iy)^2)<r0^2))
           scatter3(resm(i,2),0*resm(i,2)+ry(iy), resm(i,1),'MarkerEdgeColor','black','MarkerFaceColor','black'); 
        end
    end


end