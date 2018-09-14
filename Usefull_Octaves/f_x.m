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
## @deftypefn {} {@var{retval} =} f_x (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: User <User@DESKTOP-VMRN8OS>
## Created: 2018-08-02

function [ret] = f_x (x, y, R, E_0)
  ret = zeros(size(x)(1),size(x)(2));
  for k=1:size(x)(1)
    for j=1:size(x)(2)
      if(x(k,j)^2+y(k,j)^2)>R^2
        ret(k,j) = E_0*(x(k,j)^2*((x(k,j)^2+y(k,j)^2+R^2)/((x(k,j)^2+y(k,j)^2)^2))+y(k,j)^2*((x(k,j)^2+y(k,j)^2-R^2)/((x(k,j)^2+y(k,j)^2)^2)));
      endif
    endfor
  endfor
endfunction
