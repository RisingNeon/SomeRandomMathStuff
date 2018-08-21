## Copyright (C) 2018 Denis Andric
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.


## Author: Denis Andric
## Created: 2018-08-21
##x_0 - startpoint
##t_0 - start time
##iterations - iterations
##func_hand  x'=f(x,t) derivation

function [log] = e_euler (x_0, t_0 ,iterations , h, func_hand)
  if columns(x_0)!=1
    x_0=x_0';
  endif
  
  %%dimensions check
  if rows(x_0)!=rows(func_hand(x_0,t_0))
    error("dimenison missmatch");
  endif
  log=sparse(iterations+1,rows(t_0)+rows(x_0))
  log(1,:)=[t_0,x_0'];
  
  for i=1:1:iterations
    info=log(i,:);
    x=info(2:end)'+h*func_hand(info(2:end)',info(1));
    log(i+1,:)=[info(1)+h,x'];
  endfor
endfunction
