s3 = imread('stars.jpg');
s = rgb2gray(s3);
figure(1);imshow(s);
figure(2);imshow(s, []);
figure(3);imshow(s, [100, 155]);
figure(4);imshow(s, [100, 111]);