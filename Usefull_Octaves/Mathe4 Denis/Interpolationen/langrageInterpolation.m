function [handle]=langrageInterpolation(x,y,plotting)
  if length(x)== length(y)
    if columns(x) != 1
      x=x';
      endif
    if columns(y) != 1
      y=y';
      endif
    %%%%%%
   n=rows(x);
   handle=@(z)(0);
   
   for i=1:1:n
     if y(i)==0 %%schneller
       continue;
     endif
     
     l=@(z)(1);
    for j=1:1:n
      if i==j
        continue;
        endif
      l=@(z)(l(z)*((z-x(j))/(x(i)-x(j))));
    endfor
    handle=@(z)(handle(z)+y(i)*l(z));
  endfor
      
      
    
      
   
    
    
    
    
    
    %%%%%%%
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