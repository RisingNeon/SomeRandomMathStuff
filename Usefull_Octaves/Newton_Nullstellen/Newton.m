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
## @deftypefn {} {@var{retval} =} Newton (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: User <User@DESKTOP-VMRN8OS>
## Created: 2018-02-27

function [x] = Newton (func, xk, steps, h)
  
  x = zeros(steps,2);
  x(1,1) = 1;
  x(1,2) = xk;
  
  for k = 2:steps
    abl = (feval(func, x(k-1,2)+h)-feval(func, x(k-1,2)-h))/(2*(h));
    xk1 = x(k-1,2)-(feval(func, x(k-1,2))/abl);
    x(k,1) = k;
    x(k,2) = xk1;
  endfor

endfunction
