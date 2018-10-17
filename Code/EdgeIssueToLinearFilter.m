%load the package
pkg load image;

%read in the image
star = imread('monalisa.jpg');

%show the orignal image
figure(1);
imshow(star);

%build a Gaussian filter
fsize = 31;
fsigma = 3;
gf = fspecial('gaussian', fsize, fsigma);

%%Apply with different edge methods to see the effect

%clip
clipstar = imfilter(star, gf, 255);
figure(2);
imshow(clipstar);

%circular
cirstar = imfilter(star, gf, 'circular');
figure(3);
imshow(cirstar);

%replica
repstar = imfilter(star, gf, 'replicate');
figure(4);
imshow(repstar);

%reflect
refstar = imfilter(star, gf, 'symmetric');
figure(5);
imshow(refstar);
