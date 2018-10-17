% Project a point from 3D to 2D using a matrix operation

%% Given: Point p in 3-space [x y z], and focal length f
%% Return: Location of projected point on 2D image plane [u v]
function p_img = project_point(p, f)
    %% TODO: Define and apply projection matrix
    p_hc = [p ,1];
    fm = zeros(3,4);
    fm(1,1) = f;
    fm(2,2) = f;
    fm(3,3) = 1;
    p_img_hc = fm * p_hc';
    p_img = [p_img_hc(1)/p_img_hc(3), p_img_hc(2)/p_img_hc(3)];
endfunction

%% Test: Given point and focal length (units: mm)
p = [200 100 50];
f = 50;

disp(project_point(p, f));
