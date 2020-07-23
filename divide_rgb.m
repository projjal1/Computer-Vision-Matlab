%{
Divide image into qubsequent rgb channels and then align these channels 
into one image
%}

function divide_rgb()

img_path='image.jpg';

img=imread(img_path);

%Get dimension of the image%
[r,c]=size(img);

%Slit image into equal parts along rows%
R=img(1:r/3,1:c);
G=img(r/3+1:2*r/3,1:c);
B=img(2*r/3+1:r,1:c);

%Concatenate channels into an image%
colorImg=cat(3,R,G,B);
imshow(colorImg);

end