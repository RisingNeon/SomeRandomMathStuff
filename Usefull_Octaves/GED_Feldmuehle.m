clear;

R=1;
E_0=1;
step=0.1;
num = 10;
ende=10;

[x,y]=meshgrid(-ende:step:ende);

f_1= @(x,y) E_0*(x^2*((x^2+y^2+R^2)/((x^2+y^2)^2))+y^2*((x^2+y^2-R^2)/((x^2+y^2)^2)));
f_2= @(x,y) 2*E_0*(x*y)/(x^2+y^2);


figure(1);
clf;
quiver(x,y,f_x(x,y,R,E_0),f_y(x,y,R,E_0),0.5);

[psi,r] = meshgrid(linspace(pi,3*pi,45),linspace(R,ende,num));
[X,Y] = pol2cart(psi,r);



figure(3);
clf;
surf(x,y,sqrt(f_x(x,y,R,E_0).^2+f_y(x,y,R,E_0).^2));
shading interp;

figure(4);
clf;
surf(X,Y,sqrt(f_x(X,Y,R,E_0).^2+f_y(X,Y,R,E_0).^2));
shading interp;

figure(5);
subplot(1,2,1);
surf(X,Y,Phi(X, Y, R, E_0,"cart"));
shading interp;
subplot(1,2,2);
surf(X,Y,Phi(psi, r, R, E_0,"pol"));
shading interp;

figure(2);
clf;
hold on;
contourf(X,Y,Phi(X, Y, R, E_0,"cart"));
quiver(X,Y,f_x(X,Y,R,E_0),f_y(X,Y,R,E_0),0.5);
hold off;