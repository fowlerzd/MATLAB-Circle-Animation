% time sets for funtions
offset = linspace(0, 8, 8);

spacing = 4;

% time sets for function
t1 = linspace(-(offset(1)*pi/spacing), (2*pi) - (offset(1)*pi/spacing), 64);
t2 = linspace(-(offset(2)*pi/spacing), (2*pi) - (offset(2)*pi/spacing), 64);
t3 = linspace(-(offset(3)*pi/spacing), (2*pi) - (offset(3)*pi/spacing), 64);
t4 = linspace(-(offset(4)*pi/spacing), (2*pi) - (offset(4)*pi/spacing), 64);
t5 = linspace(-(offset(5)*pi/spacing), (2*pi) - (offset(5)*pi/spacing), 64);
t6 = linspace(-(offset(6)*pi/spacing), (2*pi) - (offset(6)*pi/spacing), 64);
t7 = linspace(-(offset(7)*pi/spacing), (2*pi) - (offset(7)*pi/spacing), 64);
t8 = linspace(-(offset(8)*pi/spacing), (2*pi) - (offset(8)*pi/spacing), 64);

% generate functions
x1 = cos(t1);
y1 = sin(t1);

x2 = cos(t2);
y2 = sin(t2);

x3 = cos(t3);
y3 = sin(t3);

x4 = cos(t4);
y4 = sin(t4);

x5 = cos(t5);
y5 = sin(t5);

x6 = cos(t6);
y6 = sin(t6);

x7 = cos(t7);
y7 = sin(t7);

x8 = cos(t8);
y8 = sin(t8);

for ii = linspace(1, 5, 5)
    for i = linspace(1, 64, 64)
        % generate points
        scatter(x1(i),y1(i), 40, "red", "o")
        hold("on")
        scatter(x2(i), y2(i), 20, "black", "o")
        hold("on")
        scatter(x3(i), y3(i), 20, "red", "o")
        hold("on")
        scatter(x4(i), y4(i), 20, "black", "o")
        hold("on")
        scatter(x5(i), y5(i), 20, "red", "o")
        hold("on")
        scatter(x6(i), y6(i), 20, "black", "o")
        hold("on")
        scatter(x7(i), y7(i), 20, "red", "o")
        hold("on")
        scatter(x8(i), y8(i), 20, "black", "o")
        hold("on")
        
        axis([-10 10 -10 10])
        pause(0.0000001)
        hold("off")
    end
end