%% Polyfit in Covid-19 data 

%######## fahad.mostafa@ttu.edu######################
%#######################################################################
y1=Covid(:,2);
N=331002647;
y=y1/N;
x1 = linspace(0,273,273);
p = polyfit(x1',y,8);
z1 = polyval(p,x1);
figure
plot(x1,y,'o')
hold on
plot(x1,z1)
hold off
T = table(x1',y,z1',y-z1','VariableNames',{'X','Y','Fit','FitError'});
print(T)

%% Poly regression 
%http://www.matrixlab-examples.com/polynomial-regression.html

% plot given data in red
plot(x1, y, 'ro', 'linewidth', 1)
hold on 

% find polynomial fits of different orders
p3 = polyfit(x1',y,3);
p5 = polyfit(x1',y,5); 
p8 = polyfit(x1',y,8);
z3 = polyval(p3,x1);
z5 = polyval(p5,x1);
z8 = polyval(p8,x1);
plot(x1, z3, 'g.-') 
plot(x1, z5, 'linewidth', 2) 
plot(x1, z8, 'k.', 'linewidth', 2)
grid

legend('original data', '3nd. order fit', '5th. order', '8th. order')

  