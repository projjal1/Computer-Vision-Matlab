function image_gradient_mag()
img = imread('cameraman.png');
[Gx, Gy] = imgradientxy(img);
[Gmag, Gdir] = imgradient(Gx, Gy);
disp(Gmag);
disp(Gdir);
end