function [] = draw_core_xy(rx,ry,rz,Psi,iz,den0,r0)


    [XX, YY] = meshgrid(rx,ry);
    [resp,resm] = detect_core(Psi(:,:,iz),XX, YY);
    hold on
    for i=1:size(resp,1)
         B = squeeze(Psi(find(ry==(resp(i,2))), find(rx==(resp(i,1))), iz ));
         if (not(isempty(resp)) && ((abs(B)^2) >= den0)  && ((resp(i,1)^2+resp(i,2)^2)<r0^2))
            scatter3(resp(i,1),resp(i,2),0*resp(i,2)+rz(iz),'MarkerEdgeColor','blue','MarkerFaceColor','blue');
         end
    end
    for i=1:size(resm,1)
        C = squeeze(Psi(find(ry==(resm(i,2))), find(rx==(resm(i,1))), iz ));
         if (not(isempty(resm)) && ((abs(C)^2) >= den0) && ((resm(i,1)^2+resm(i,2)^2)<r0^2))
            scatter3(resm(i,1),resm(i,2),0*resm(i,2)+rz(iz),'MarkerEdgeColor','magenta','MarkerFaceColor','magenta'); 
         end
    end

end