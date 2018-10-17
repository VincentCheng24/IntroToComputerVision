mona = imread('stars.jpg');
figure(1);imshow(mona);

nmona = randn(size(mona)) .* 125 + mona;
figure(2);imshow(nmona);


sigmav = [3, 13, 23, 33];
for sigma = sigmav
  hsize = 31;
  h = fspecial('gaussian', hsize, sigma);
  out = imfilter(nmona, h);
  figure(sigma);imshow(out);
end
