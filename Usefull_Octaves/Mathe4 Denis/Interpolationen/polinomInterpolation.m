function [handle,a] = polinomInterpolation(x,y,plotting)
  if length(x)== length(y)
    if columns(x) != 1
      x=x';
      endif
    if columns(y) != 1
      y=y';
      endif
    
    n=length(x);
    m=sparse(n,n);
    a=sparse(n,1);
    
    
    for i=1:1:n
      m(:,i)=x.^(i-1);
      endfor
      full(m);
      a=m\y;
      handle=@(x)(0);
    for i=1:1:n
      handle=@(x)(handle(x)+a(i)*x^(i-1));
      endfor
      
      
    
      
   
    
    
    
    
    
    
  else
  error("length of x and y need to be same");
  endif
  %%plotting
  if plotting==1
   
       addpath(genpath('Funktionen'));
       
     [a,b]=findMinMax(x);
      t=[a:0.1:b];
      y=sparse(length(t),1);
      for i =1:1:length(t)
         y(i)=handle(t(i));
      endfor
    plot(t,y);
  endif
    
  
  
  endfunction
   
