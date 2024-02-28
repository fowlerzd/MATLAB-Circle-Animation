num_points = 2;

offset = 1:num_points;
frames = 1:64;

spacing = num_points/2;

% make time sets with offsets
for i = offset
    t(i, frames) = linspace(-(offset(i)*pi/spacing), (2*pi) - (offset(i)*pi/spacing), 64);
end

% generate functions
for i = offset
    x(i, frames) = cos(t(i, frames));
    y(i, frames) = sin(t(i, frames));
end

colors = ["red", "black"];

% generate points
for i = frames
    for ii = offset
    scatter(x(ii,i), y(ii,i), 40, colors(mod(i,2)+1), "o", "filled")
    hold("on")
    end

    axis([-10 10 -10 10])
    pause(0.0000001)
    hold("off")
end
