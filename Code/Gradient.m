pkg load image;
colimg = double(imread('moon.jpg')) ./ 255;
figure(1);imshow(colimg);
img = rgb2gray(colimg);
disp(size(img));
[gmag, gdir] = imgradient(img);
figure(2);imshow(gmag / (4 * sqrt(2))); % mag = sqrt(gx^2 + gy^2), so [0, (4 * sqrt(2))]
figure(3);imshow((gdir + 180.0) / 360.0); % angle in degrees [-180, 180]
disp(size(gmag));
disp(size(gdir));
