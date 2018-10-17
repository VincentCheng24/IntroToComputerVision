s = [-1 0 0 1 1 1 0 -1 -1 0 1 0 0 -1];
for i = 1:12
  disp(i);
  s1 = circshift(s, i)
end
