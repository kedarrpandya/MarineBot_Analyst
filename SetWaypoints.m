% Given perfect coordinates
perfectCoordinates = [60 90 5;
                      60 250 10;
                      -90 250 15;
                      -90 120 10;
                      50 150 0];

% Number of waypoints
WPNum = 5;

% Generate random waypoints similar to the perfect coordinates
Waypoints = zeros(WPNum, 3);
for i = 1:WPNum
    % Generate random values around the perfect coordinates
    deviation = rand(1, 3) * 10 - 5; % Random deviation between -5 and 5
    Waypoints(i, :) = perfectCoordinates(i, :) + deviation;
end

% Display the generated waypoints
disp('Generated Waypoints:');
disp(Waypoints);

% Define initial and final points
P0 = [0, 0, 0];
A0 = [0, 68.5, 0];