% Find template 1D
% NOTE: Function definition must be the very first piece of code here!
pkg load image; % AFTER function definition

% Test code:
s = [-1 0 0 1 1 1 0 -1 -1 0 1 0 0 -1];
t = [1 1 0];
disp('Signal:'), disp([1:size(s, 2); s]);
disp('Template:'), disp([1:size(t, 2); t]);

t(t==0) = -1;
s_size = size(s, 2);
t_size = size(t, 2);
mul = zeros(1,s_size - t_size + 1);
t1 = [t, mul(1:(size(mul,2)-1))];
disp(t1);

for i = 1: s_size - t_size + 1
  mul(i) = t1 * s';
  t1 = circshift(t1,1,2);
endfor

disp('mul:'), disp([1:size(mul, 2); mul]);
[val,index] = max(mul);

disp('Index:'), disp(index);