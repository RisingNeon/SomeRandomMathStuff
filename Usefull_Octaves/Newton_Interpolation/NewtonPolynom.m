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
## @deftypefn {} {@var{retval} =} NewtonPolynom (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: User <User@DESKTOP-VMRN8OS>
## Created: 2018-04-16

function [y] = NewtonPolynom (x,x_vec,gamma_vec,n)
    
    sum = gamma_vec(1,1);
    product = 1;
    
    for k = 2:n+1
      product = product .* (x-x_vec(k-1));
      sum = sum + (gamma_vec(1,k).*product);
    endfor
    
    y = sum;
    
  endfunction
