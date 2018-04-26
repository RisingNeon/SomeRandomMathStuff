function [handle]=newtonInterpolation(x,y,plotting)
  if length(x)== length(y)
    if columns(x) != 1
      x=x';
      endif
    if columns(y) != 1
      y=y';
      endif
    %%%%%%
    n=length(y);
    q=sparse(1,n);
    z=sparse(y)
    handle=@(a)(0);
    for i=1:1:n
      q(i)=z(1);
      for j=1:1:n-i
        z(j)=((z(j+1)-z(j))/(x(j+i)-x(j)));
      endfor
      z=z([1:1:n-1]);
    endfor
    
    
    for i=1:1:n
      if q(i)== 0
        continue;
      endif
      h=@(a)(1);
      for j=1:1:i-1
        h=@(a)(h(a)*(a-x(j)));
      endfor
      handle=@(a)(handle(a)+h(a)*q(i));
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