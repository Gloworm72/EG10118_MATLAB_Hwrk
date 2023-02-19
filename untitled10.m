clear
clc

x = -5:1:5;

nX = length(x);

y1 = zeros(1,nX);
y2 = zeros(1,nX);
y3 = zeros(1,nX);

for ix = 1:1:nX
    y1(ix) = 2*x(ix)+4;
    y2(ix) = sin(x(ix));
    y3(ix) = x(ix)^2;
end

% plot(x,y1,'b-o',x,y2,'r*-',x,y3,'k^--')
%figure(2)
%plot(x,y1,'b-o',...
 %   x,y2,'r*-',...
  %  x,y3,'k^--')

  figure(3)
  plot(x,y1,'b-o')
  hold on
  plot(x,y2,'r*-')
  plot(x,y3,'k^--')
  

legend('2*x+4','sin(x)','x^2','Location','southeast')

ylabel('y')
xlabel('x')

grid on

axis([-6, 6, -15, 15])