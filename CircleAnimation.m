%% User Variables
% The total number of frames each sequence of dots should be animated for
NUM_FRAMES = 64;
% The maximum number of points that will be animated
MAX_POINTS = 7;
% A list containing the colors that the dots should animate through
COLORS = ["red", "green", "blue", "cyan", "magenta", "yellow", "black"];

%% Variable Validation
if MAX_POINTS < 1
    error("MAX_POINTS must be greater than 1! Recieved %i instead.", MAX_POINTS)
end

if MAX_POINTS > length(COLORS)
    error("MAX_POINTS is greater than length of provided COLORS! Please provide as many colors as points.")
end

%% Animation
frames = 1:NUM_FRAMES;
% Preallocating memomry 
t = zeros(MAX_POINTS, NUM_FRAMES);
x = zeros(MAX_POINTS, NUM_FRAMES);
y = zeros(MAX_POINTS, NUM_FRAMES);

% Animation for each number of points to be shown
for num_points = 1:MAX_POINTS
    %% Generate points
    % An array to hold the index of each point
    offset = 1:num_points;
    
    spacing = num_points/2;
    
    % The angle in radians that a point on the unit circle is at for each frame
    for i = offset
        t(i, frames) = linspace(-i*pi/spacing, 2*pi - (i*pi/spacing), NUM_FRAMES);
    end

    % Generate coordinates based on angle on the unit circle
    x = cos(t);
    y = sin(t);
 
    %% Plot animation
    for i = frames
        scatter( ...
            x(offset,i), ...
            y(offset,i), ...
            40, ...
            COLORS(mod(i,num_points)+1), ... % Clamp the frame index to be within the bounds of COLORS
            "o", ...
            "filled" ...
        )
        hold("on")
        
        % Set the axis bounds to be constant
        axis([-10 10 -10 10])
        
        % Make sure the animaton is momentarily visible
        pause(0.0000001)
        hold("off")
    end
end
