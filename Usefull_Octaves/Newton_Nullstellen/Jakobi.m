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
## @deftypefn {} {@var{retval} =} Jakobi (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: User <User@DESKTOP-VMRN8OS>
## Created: 2018-02-27

function [J] = Jakobi (funcV, xV, h)
  J = zeros(size(xV)(1),size(xV)(1));
  direc = eye(size(xV)(1),size(xV)(1));
  
  for dif = 1:size(xV)(1)
    for f = 1:size(xV)(1)
      abl = dot(partialCentralDif(funcV, xV, h, direc(:,f)), direc(:,dif));
      J(dif,f) = abl;
    endfor
  endfor

endfunction
