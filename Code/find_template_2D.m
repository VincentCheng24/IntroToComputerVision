% Find template 2D
% NOTE: Function definition must be the very first piece of code here!
function [yIndex xIndex] = find_template_2D(template, img)
    % TODO: Find template in img and return [y x] location
    % NOTE: Turn off all output from inside the function before submitting!
    c = normxcorr2(template, img);
    [y, x] = find(c == max(c(:)));
    [yshift, xshift] = size(template);
    yIndex = y - yshift + 1;
    xIndex = x - xshift + 1;
    
endfunction

pkg load image; % AFTER function definition

% Test code:
tablet = imread('tablet.png');
imshow(tablet);
glyph = tablet(75:165, 150:185);
imshow(glyph);

[y x] = find_template_2D(glyph, tablet);
disp([y x]); % should be the top-left corner of template in tablet

%index
colormap('gray'), imagesc(c);
hold on;
plot(x, y, 'r+', 'markersize', 16);

%bounding box
figure
imshow(tablet);
imrect(gca, [x, y, size(glyph,2), size(glyph,1)]);