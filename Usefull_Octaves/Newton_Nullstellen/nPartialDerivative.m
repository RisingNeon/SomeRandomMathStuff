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
## @deftypefn {} {@var{retval} =} nPartialDerivativ (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: User <User@DESKTOP-VMRN8OS>
## Created: 2018-03-03

function [res] = nPartialDerivative (func, xk, h, n)
  
  #n = size(direcs)(2)
  
  
  
  summe = zeros(size(xk)(1),1);
  
  for i = 0:n
      #if abs(n-2*i) != 0
        summe = summe + (-1).^i*bincoeff(n,i)*feval(func,xk+(n/2-i)*h);
      #else
        #summe = summe + (-1).^i*bincoeff(n,i)*feval(func,xk+(n/2-i)*h);
      #endif  
  endfor
  
  res = summe/((h)^n);
  
endfunction
