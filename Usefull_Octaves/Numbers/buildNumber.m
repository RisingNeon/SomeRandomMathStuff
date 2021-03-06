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
## @deftypefn {} {@var{retval} =} buildNumber (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: User <User@DESKTOP-VMRN8OS>
## Created: 2018-03-19

function [num] = buildNumber (numSTR, precision)
  indK = findstr(numSTR,".");
  A = blanks(2*precision);
  h = 0;
  for i = 1:precision+1
    h++;
    if(i <= size(numSTR)(2))
      if(i == indK)
        i--;
      else
        A(1,2*i-1) = substr(numSTR,h,1)
        A(1,2*i) = " ";
      endif
    else 
      A(1,2*i-1) = "0"
      A(1,2*i) = " ";
    endif
    
  endfor
  
  num = struct("NumVec",strread(A,"%u")',"KommaPos",indK,"Prec",precision,"STR",numSTR);
endfunction
