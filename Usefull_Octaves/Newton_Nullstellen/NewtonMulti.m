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
## @deftypefn {} {@var{retval} =} NewtonMulti (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: User <User@DESKTOP-VMRN8OS>
## Created: 2018-03-02

function [x, konv] = NewtonMulti (func, xk, steps, h)
  x = zeros(size(xk)(1),steps);
  x(:,1) = xk(:,1);
  konv = zeros(steps,1);
  clf;
  shg;
  for i = 2:steps
    J = Jakobi(func,x(:,i-1),h);
    f = -feval(func, x(:,i-1));
    deltaX = J\f;
    x(:,i) = x(:,i-1) + deltaX;
    konv(i-1,1) = norm(x(:,i)-x(:,i-1));
    
    hold on;
    plot(0:i-2,konv(1:i-1,1),"color","g");
    line([0;i-2],[eps;eps],"linewidth",2,"color","r");
    hold off;
    refresh();
    wait(0.5);
    
    
    
  endfor

endfunction

function wait (waitT)
  
  startT = time();
  endT = startT + waitT;
  
  while(time() <= endT)
  endwhile

endfunction