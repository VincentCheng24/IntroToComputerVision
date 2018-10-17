% For Your Eyes Only
pkg load image;

frizzy = rgb2gray(imread('frizzy.png'));
froomer = rgb2gray(imread('froomer.png'));
imshow(frizzy);
imshow(froomer);

% TODO: Find edges in frizzy and froomer images
fri = edge(frizzy, 'canny');
fro = edge(froomer, 'canny');

% TODO: Display common edge pixels
imshow(fri);
imshow(fro);
imshow(fri & fro); %critical operation