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
## @deftypefn {} {@var{retval} =} Phi (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: User <User@DESKTOP-VMRN8OS>
## Created: 2018-08-03

function [retval] = Phi (K1, K2, R, E_0, koor)
  if strcmp(koor,"pol")
    retval = E_0.*cos(K2).*(R^2.*(1./K1).-K1);
  else if strcmp(koor,"cart")
      retval = E_0.*K1.*(R^2.*(1./(K1.^2+K2.^2)).-1);
    endif
  endif
endfunction
