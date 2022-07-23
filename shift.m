
partisi = [3 3]; #permutation of the code
x = [1 1 0 1 1 0]; #specify a generator polynomial in a binary vector, i.e. represent the polynomial sum_{i=0}^n a_ix^i with the vector (a_i)_{i=0}^n
banyakx = size(x,1);
  
y = zeros(banyakx.*kpk(partisi),length(x));
#y(1,:) = x;
for i = 1:(kpk(partisi)),
  if i == 1,
    for j = 1:banyakx,
      a = shiftv2(x(j,:),partisi);
      y(i+((j-1).*banyakx),:) = a;
    endfor
  else,
    for j = 1:banyakx,
      b = shiftv2(y(i-1+((j-1).*banyakx),:),partisi);
      y(i+((j-1).*banyakx),:) = b;
    endfor
  endif
endfor
x = shiftv2(x,partisi);

disp('Hasil shift = ');
disp(y);
disp('');

u1 = unique(y,'rows'); 
disp('Basis kode =');
disp(u1);
disp('');

k = size(u1,1);
kard = 2.^k; ## ganti sesuai mod yang digunakan
katakode = zeros(kard,size(u1,2));

koef = dec2base(2^k-1:-1:0,2)-'0'; #ganti sesuai dengan mod

for i = 1:kard,
  for j = 1:k,
    temp = koef(i,j)*u1(j,:);
    katakode(i,:) = mod(katakode(i,:)+temp,2); # ganti angka terakhir sesuai dengan mod berapa
  endfor
endfor
#u = [u1;add(u1)]; # hitung semua unsur dalam kode
#u2 = unique(u,'rows'); #hapus baris yang berulang

katakode = unique(katakode,'rows');
disp('Katakode = ');
disp(katakode);
#disp('');

#disp('Katakode berulang = ');
#disp(u);
#disp('Katakode = ');
#disp(u2);

bob = [];
for i = 1:size(katakode,1),
  bob = [bob nnz(katakode(i,:))];
endfor

disp('Bobot kata kode = ');
disp(bob);
disp('');

kard = size(katakode,1);
#k = size(u1,1);
disp('Kardinalitas Kode = ');
disp(kard);
disp('');
k = log(kard)./log(2); ### ganti angka log(...) sesuai dengan mod yang digunakan
disp('Dimensi Kode = ');
disp(k);
disp('');

dist = min(bob(bob>0));
disp('Hamming distance = ');
disp(dist); 
