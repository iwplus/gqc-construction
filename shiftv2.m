function y = shiftv2(x,partisi);
  p = length(partisi);
y = [];
for i = 1:p,
  if i == 1,
    x1 = shiftv(x(1:partisi(i)));
   else,
    ind1 = sum(partisi(1:(i-1)));
    ind2 = ind1+partisi(i);
    x1 = shiftv(x((ind1+1):ind2));
  endif
  y = [y x1];
endfor
#disp('Shift dari x adalah');
#disp(y);
endfunction
