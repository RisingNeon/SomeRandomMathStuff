format long;
f = @(x) x^10/1000;
x = 2;
n_max = 10;
h_max = 5;
h_start = 10;
t1 = zeros(n_max,h_max);
t2 = zeros(n_max,1);
abl1 = zeros(n_max,h_max);
abl2 = zeros(n_max,1);
abs_err = zeros(n_max,h_max);
rel_err = zeros(n_max,h_max);

a = 1/sqrt(2);
  
  abl2(1,1) = x^10/1000;
  abl2(2,1) = 10*x^9/1000;
  abl2(3,1) = 10*9*x^8/1000;
  abl2(4,1) = 10*9*8*x^7/1000;
  abl2(5,1) = 10*9*8*7*x^6/1000;
  abl2(6,1) = 10*9*8*7*6*x^5/1000;
  abl2(7,1) = 10*9*8*7*6*5*x^4/1000;
  abl2(8,1) = 10*9*8*7*6*5*4*x^3/1000;
  abl2(9,1) = 10*9*8*7*6*5*4*3*x^2/1000;
  abl2(10,1) = 10*9*8*7*6*5*4*3*2*x^1/1000;
  
  h_opt = zeros(10,h_max);

for h = 1:h_max
  for i = 0:n_max-1
  
    #direcs = ones(1,i);
    
    if h != 1
      test = abs(abl1(1,h-1))/abs(abl1(3,h-1))
      h_opt(i+1,h) = sqrt(10^(-i)*2*(abs(abl1(1,h-1))/abs(abl1(3,h-1))));
    else
      h_opt(i+1,1) = h_start;
    endif
  
    tic();
      abl1(i+1,h) = nPartialDerivative (f, x, h_opt(i+1,h), i);
    t1(i+1,h) = toc();
  
  endfor
  
  



  for k = 1:n_max
    abs_err(k,h) = (abl1(k,h)-abl2(k,1));
    rel_err(k,h) = (abl1(k,h)-abl2(k,1))/abs(abl2(k,1));
  endfor
  
  hold on;
  figure(1);
  plot(1:n_max,abs_err(1:n_max,h));
  ylim([-10^(1),10^(1)]);
  figure(2);
  plot(1:n_max,rel_err(1:n_max,h));
  ylim([-10^(1),10^(1)]);
endfor

[abl1,abl2];
h_opt;