% Find best match
function best_x = find_best_match(patch, strip)
    % TODO: Find patch in strip and return column index (x value) of topleft corner
    best_x = 1; % placeholder
    patch_size = size(patch, 1);
    strip_height = size(strip,1);
    strip_length = size(strip,2);
    min_diff = 0;
    if patch_size == strip_height
        for i = (1: strip_length-patch_size)            
            diff = sumsq(patch - strip(:, i:(i+patch_size-1))(:));
		  if diff < min_diff
		    min_diff = diff;
		    best_x = i;
        end
    else
        error("size not match")
    end        
endfunction

pkg load image;

% Test code:

%% Load images
left = imread('flowers-left.png');
right = imread('flowers-right.png');
figure, imshow(left);
figure, imshow(right);

%% Convert to grayscale, double, [0, 1] range for easier computation
left_gray = double(rgb2gray(left)) / 255.0;
right_gray = double(rgb2gray(right)) / 255.0;

%% Define image patch location (topleft [row col]) and size
patch_loc = [120 170];
patch_size = [100 100];

%% Extract patch (from left image)
patch_left = left_gray(patch_loc(1):(patch_loc(1) + patch_size(1) - 1), patch_loc(2):(patch_loc(2) + patch_size(2) - 1));
figure, imshow(patch_left);

%% Extract strip (from right image)
strip_right = right_gray(patch_loc(1):(patch_loc(1) + patch_size(1) - 1), :);
figure, imshow(strip_right);

%% Now look for the patch in the strip and report the best position (column index of topleft corner)
best_x = find_best_match(patch_left, strip_right);
disp(best_x);
patch_right = right_gray(patch_loc(1):(patch_loc(1) + patch_size(1) - 1), best_x:(best_x + patch_size(2) - 1));
figure, imshow(patch_right);

  