## Copyright (C) 2018 User
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

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} Newton_Interpolation (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: User <User@DESKTOP-VMRN8OS>
## Created: 2018-04-14

function [res,gamma_vec] = Newton_Interpolation (f, x, x_vec, n)
  
  dif_vec = zeros(length(x_vec),n+1);
  
  for i = 1:length(x_vec)
    dif_vec(i,1) = feval(f,x_vec(i));
  endfor
  
  for k = 2:(n+1)
    for j = 1:(n-k)+2
      
      dif_vec(j,k) = (dif_vec(j+1,k-1)-dif_vec(j,k-1))/(x_vec(j+k-1)-x_vec(j));
      
    endfor
  endfor
  
  gamma_vec = dif_vec(1,:);
  
  res = NewtonPolynom(x, x_vec, gamma_vec, n);
  
  
  
endfunction
