function [] = draw_core_zy(rx,ry,rz,Psi,ix,den0,r0)

    [ZZ, YY] = meshgrid(rz,ry);
    [resp,resm] = detect_core(squeeze(Psi(:,ix,:)),ZZ, YY);
    hold on
    for i=1:size(resp,1)
        B = squeeze(Psi(find(ry==(resp(i,2))), ix, find(rz==(resp(i,1))) ));
         if (((abs(B)^2) >= den0)  && ((rx(ix)^2+resp(i,2)^2)<r0^2))
            scatter3(0*resp(i,2)+rx(ix), resp(i,2), resp(i,1),'MarkerEdgeColor','black','MarkerFaceColor','black');
         end
    end    
    for i=1:size(resm,1)
        C = squeeze(Psi( find(ry==resm(i,2)), ix, find(rz==resm(i,1)) ));
         if (((abs(C)^2) >= den0) && ((rx(ix)^2+resm(i,2)^2)<r0^2))
            scatter3(0*resm(i,2)+rx(ix), resm(i,2), resm(i,1),'MarkerEdgeColor','black','MarkerFaceColor','black'); 
         end
    end


end