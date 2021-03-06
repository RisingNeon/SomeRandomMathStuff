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
## @deftypefn {} {@var{retval} =} addNum (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: User <User@DESKTOP-VMRN8OS>
## Created: 2018-03-20

function [res] = addNum (num1, num2, prec)
  vec1 = zeros(1,prec);
  vec1 = zeros(1,prec);
  
  indK1 = num1.KommaPos;
  indK2 = num2.KommaPos;
  
  if indK1 >= indK2
    
    a = num1.NumVec;
    b = num2.NumVec;
    
  else
  
    b = num1.NumVec;
    a = num2.NumVec;
  
  endif
  
  #richtiges schreiben in vec1 und vec2 (In abhängigkeit von KommaPos)
  
  k1 = 1;
  k2 = 1;
  
  for k = 1:prec
    
    if abs(indK1-indK2) > 0
      
      
    endif
    
    if k<=size(a)(2)
      vec1(1,k) = a(1,k1);
      k1++;
    endif
    
    if k<=size(b)(2)
      vec2(1,k) = b(1,k2);
      k2++;+
    endif
    
  endfor
  
  #Addition der Vektoren
  
  
  res = struct();
endfunction
