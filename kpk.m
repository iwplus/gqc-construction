function y = kpk(b);
  if length(b) == 1,
    y = b(1);
  else,
    y = lcm(b(1),b(2));
    for i = 2:length(b),
      y = lcm(y,b(i));
    endfor
  endif
endfunction
