% time sets for funtions
offset = linspace(0, 8, 8);

spacing = 4;

% make list of times with offsets
for i = linspace(1, 8, 8)
    t(i, 1:64) = linspace(-(offset(1)*pi/spacing), (2*pi) - (offset(1)*pi/spacing), 64);
end

% generate functions
for i = linspace(1, 8, 8)
    x(i, 1:64) = cos(t(i,1:64));
    y(i, 1:64) = sin(t(i,1:64));
end

colors = ["red", "black"];

% generate points
for i = 1:64
    for ii = 1:8
    scatter(x(ii,i), y(ii,i), 40, colors(mod(i,2)+1), "o")
    hold("on")
    end

    axis([-10 10 -10 10])
    pause(0.0000001)
    hold("off")
end
