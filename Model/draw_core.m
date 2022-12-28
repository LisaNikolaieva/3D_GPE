function [] = draw_core(rx,ry,rz,Psi,plane)
den0=0;
r0=1000;
Nz=max(size(rz))/2;
switch plane
    case 'xy'
        [XX, YY] = meshgrid(rx,ry);
        for iz=1:Nz
            [resp,resm] = detect_core(Psi(:,:,iz),XX, YY);
            hold on
            for i=1:size(resp,1)
                     if (not(isempty(resp)) && ((abs(squeeze(Psi(find(ry==(resp(i,2))), find(rx==(resp(i,2))), iz )))^2) >= den0)  && ((resp(i,1)^2+resp(i,2)^2)<r02^2))
                        scatter3(resp(i,1),resp(i,2),0*resp(i,2)+rz(iz),'MarkerEdgeColor','blue','MarkerFaceColor','blue');
                     end
            end
            for i=1:size(resm,1)
                     if (not(isempty(resm)) && ((abs(squeeze(Psi(find(ry==(resm(i,2))), find(rx==(resm(i,2))), iz )))^2) >= den0) && ((resm(i,1)^2+resm(i,2)^2)<r02^2))
                        scatter3(resm(i,1),resm(i,2),0*resm(i,2)+rz(iz),100,'x','LineWidth',1,'MarkerEdgeColor','black','MarkerFaceColor','black'); 
                     end
            end
        end


    case 'zy'
        [ZZ, YY] = meshgrid(rz,ry);
        for ix=1:Nx
            [resp,resm] = detect_core(squeeze(Psi(:,ix,:)),ZZ, YY);
            hold on
            for i=1:size(resp,1)
                 if (((abs(squeeze(Psi(find(ry==(resp(i,2))), ix, find(rz==(resp(i,1))) )))^2) >= den0)  && ((rx(ix)^2+resp(i,2)^2)<r0^2))
                    if resp(i,1)>0
                     scatter3(0*resp(i,2)+rx(ix), resp(i,2), resp(i,1),'MarkerEdgeColor','black','MarkerFaceColor','black');
                    else
                     scatter3(0*resp(i,2)+rx(ix), resp(i,2), resp(i,1),'MarkerEdgeColor','blue','MarkerFaceColor','blue');
                    end
                 end
            end    
            for i=1:size(resm,1)
                 if (((abs(squeeze(Psi( find(ry==resm(i,2)), ix, find(rz==resm(i,1)) )))^2) >= den0) && ((rx(ix)^2+resm(i,2)^2)<r0^2))
                    if resm(i,1)>0
                     scatter3(0*resm(i,2)+rx(ix), resm(i,2), resm(i,1),'MarkerEdgeColor','black','MarkerFaceColor','black'); 
                    else
                    scatter3(0*resm(i,2)+rx(ix), resm(i,2), resm(i,1),'MarkerEdgeColor','blue','MarkerFaceColor','blue'); 
                    end
                 end
            end
        end

    case 'zx'
        [ZZ, XX] = meshgrid(rz,rx);
        for iy=1:Ny
            [resp,resm] = detect_core(squeeze(Psi(iy,:,:)),ZZ, XX);
            hold on
            for i=1:size(resp,1)
                 if ( ((abs(squeeze(Psi(iy, find(rx==(resp(i,2))), find(rz==(resp(i,1))) )))^2) >= den0) && ((resp(i,2)^2+ry(iy)^2)<r0^2))
                    if resp(i,1)>0
                     scatter3(resp(i,2),0*resp(i,2)+ry(iy), resp(i,1),'MarkerEdgeColor','black','MarkerFaceColor','black'); 
                    else
                     scatter3(resp(i,2),0*resp(i,2)+ry(iy), resp(i,1),'MarkerEdgeColor','blue','MarkerFaceColor','blue'); 
                    end
                 end  
            end
            for i=1:size(resm,1)
                 if (((abs(squeeze(Psi(iy, find(rx==(resm(i,2))), find(rz==(resm(i,1))) )))^2) >= den0) && ((resm(i,2)^2+ry(iy)^2)<r0^2))
                    if resm(i,1)>0
                     scatter3(resm(i,2),0*resm(i,2)+ry(iy), resm(i,1),'MarkerEdgeColor','black','MarkerFaceColor','black'); 
                    else
                     scatter3(resm(i,2),0*resm(i,2)+ry(iy), resm(i,1),'MarkerEdgeColor','blue','MarkerFaceColor','blue'); 
                    end
                 end
            end
        end


end
end

