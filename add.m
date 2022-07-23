function a = add(b);
  n = size(b,1);
 # m = (n.*(n+1)./2);
  
  #y = zeros(n,n,n);
  a = [];
  for i = 1:(n-1),
    for j = (i+1):n,
      c = modulo(b(i,:),b(j,:));
      a = [a;c];
    endfor
  endfor
endfunction
