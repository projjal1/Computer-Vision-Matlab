%{
Access top-left and bottom-right 50*50 image section and compute 
their Sum Squared Difference(SSD) 
%}

function ssd_subregions()
img = imread('cameraman.png');
subimg1 = img(1:50,1:50);
subimg2 = img(  end -49 :end,  end -49 :end);
SSD = sum(sum((double(subimg1) - double(subimg2)).^2));
disp(SSD);
end