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
## @deftypefn {} {@var{retval} =} polynom (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: User <User@DESKTOP-VMRN8OS>
## Created: 2018-03-27

function [res_poly] = polynom (poly, solution)
  n = size(poly)(2);
  res_poly = zeros(1,n-1);
  zwisch = [poly(1,1),poly(1,2)];
  
  #in jedem Schritt:
  for k = 3:n+1
    z_divisor = zwisch(1,1)*solution;
    res_poly(1,k-2) = z_divisor;
    if k>n
      pol = 0;
    else
      pol = poly(1,k);
    endif
    
    zwisch = [zwisch(1,2)+z_divisor,pol];
  endfor
  if (zwisch(1,1) != 0 || zwisch(1,2) != 0) 
   fehler =  "fehler";
  endif
endfunction
