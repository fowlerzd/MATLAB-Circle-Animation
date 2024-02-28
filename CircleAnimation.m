offset = [];
t = [];
x = [];
y = [];

frames = 1:64;
num_points = 4;

offset = 1:num_points;

spacing = num_points/2;

% make time sets with offsets
for i = offset
    t(i, frames) = linspace(-(offset(i)*pi/spacing), (2*pi) - (offset(i)*pi/spacing), size(frames,2));
end

t(size(offset,2)+1, frames) = linspace(-(offset(1)*pi/spacing), (2*pi) - (offset(1)*pi/spacing), size(frames,2));

% generate functions
for i = size(offset,2)+1
    x(i, frames) = cos(t(i, frames));
    y(i, frames) = sin(t(i, frames));
end

colors = ["red", "green", "blue", "cyan", "magenta", "yellow", "black"];

% generate points
for time = frames
    for cur_point = offset
    %scatter(x(ii,i), y(ii,i), 40, colors(mod(i,num_points)+1), "o", "filled")
    plot(x(cur_point:cur_point+1, time), y(cur_point:cur_point+1, time), 'red', 'LineWidth', 2)
    hold("on")
    end

    axis([-10 10 -10 10])
    pause(0.0000001)
    hold("off")
end
