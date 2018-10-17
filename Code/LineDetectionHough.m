%Hough demo
pkg load image;

%load the image
rawimg = rgb2gray(imread('line.jpg'));

%filter the noise
h = fspecial('gaussian', 11,3);
img = imfilter(rawimg, h);
%figure, imshow(img);

%edges
edgesmooth = edge(img, 'canny');
figure, imshow(edgesmooth);
edgesraw = edge(rawimg, 'canny');
%figure, imshow(edgesraw);

%apply Hough
H = houghtf(edgesmooth);
figure, imagesc(H);
%figure, imagesc(acc,'Xdata', theta, 'YData', roho), title('Hough accumulator');
[R, C] = immaximas(H);
hold on; plot(R, C, 'rs', 'markersize', 20);hold off;