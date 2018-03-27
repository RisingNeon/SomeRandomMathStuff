vec1=[1,7,2];
vec2=[2,2,4];
vec3=[3,1,1];

f1 = @(x) vec1(1,1)*x^2+vec1(1,2)*x+vec1(1,3);
f2 = @(x) vec2(1,1)*x^2+vec2(1,2)*x+vec2(1,3);
f3 = @(x) vec3(1,1)*x^2+vec3(1,2)*x+vec3(1,3);

nul1 = Newton(f1,1,30,0.001)(30,2)
nul2 = Newton(f2,1,30,0.001)(30,2)
nul3 = Newton(f3,1,30,0.001)(30,2)

vec11 = polynom(vec1,nul1);
vec21 = polynom(vec2,nul2);
vec31 = polynom(vec3,nul3);

f11 = @(x) vec11(1,1)*x+vec11(1,2);
f21 = @(x) vec21(1,1)*x+vec21(1,2);
f31 = @(x) vec31(1,1)*x+vec31(1,2);

nul11 = Newton(f11,1,30,0.001)(30,2)
nul21 = Newton(f21,1,30,0.001)(30,2)
nul31 = Newton(f31,1,30,0.001)(30,2)