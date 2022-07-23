function y = shiftv(x);
  n = length(x);
for i= 1:n,
  if i == 1,
    y(i) = x(n);
  else,
  y(i) = x(i-1);
  endif 
endfor
#disp('hasil shift = ');
#disp(y)
endfunction
