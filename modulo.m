function a = modulo(x,y);
  #for i = 1:length(x),
   # a(i) = mod(x(i)+y(i),2);
  #endfor
  a = mod(x+y,2);
endfunction

#disp('Hasil operasi modulo = ');
#disp(a);
