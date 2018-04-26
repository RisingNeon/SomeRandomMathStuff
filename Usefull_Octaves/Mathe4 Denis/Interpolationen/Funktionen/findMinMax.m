function [min,max]=findMinMax(x)
  min=x(1);
  max=x(1);
  for i=2:1:length(x)
    if min > x(i)
      min=x(i);
    endif
    if max< x(i)
      max=x(i);
    endif
  endfor
endfunction
