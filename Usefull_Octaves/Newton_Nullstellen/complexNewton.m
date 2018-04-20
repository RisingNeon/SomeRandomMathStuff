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
## @deftypefn {} {@var{retval} =} complexNewton (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: User <User@DESKTOP-VMRN8OS>
## Created: 2018-03-28

function [res] = complexNewton (func, xk, steps, h)
  freal = @(x) real(feval(func,x));
  fimag = @(x) imag(feval(func,x));
  
  real(feval(func,xk))
  imag(feval(func,xk))
  feval(freal,xk)
  feval(fimag,xk)
  
  null_real = Newton(freal,xk,steps,h)(steps,2)
  null_imag = Newton(fimag,xk,steps,h)(steps,2)
  
  res = null_real + null_imag;
  
endfunction