%load the package
pkg load image;

%read in the image
star = imread('moon.jpg');

%show the orignal image
figure(1);
imshow(star);

%add salt & pepper noise
noises = imnoise(star, 'salt & pepper', 0.02);
figure(2);
imshow(noises);

%apply a median filter
medians = medfilt2(star);
figure(3);
imshow(medians);
