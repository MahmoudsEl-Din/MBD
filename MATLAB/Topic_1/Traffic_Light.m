function traffic_light_simulation()
    r = 1.5;
    a = 0: 0.1: 2*pi;

    setupTrafficLightFigure();
    drawTrafficLightStructure();

    % Start the blinking loop
    blinkLights(r, a);
end

function setupTrafficLightFigure()
    hold on;
    axis([0 20 0 20]);
    title('Traffic Light');
end

function drawTrafficLightStructure()
    % Draw the traffic light box and pole
    rectangle('Position', [8, 6, 4, 12], 'FaceColor', [0 0 0], 'Curvature', [0.1, 0.1]);
    rectangle('Position', [9.5, 0, 1, 6], 'FaceColor', [0.5 0.5 0.5]);
end

function blinkLights(r, a)
    while true
        % Blinking the red light
        blinkLight(10+r*cos(a), 16+r*sin(a), 'r', [0.3, 0.05, 0.05]);

        % Blinking the yellow light
        blinkLight(10+r*cos(a), 12+r*sin(a), 'y', [0.5, 0.5, 0.1]);

        % Blinking the green light
        blinkLight(10+r*cos(a), 8+r*sin(a), 'g', [0.05, 0.3, 0.05]);
    end
end

function blinkLight(x, y, activeColor, inactiveColor)
    fill(x, y, activeColor); % Turn on
    pause(1);
    fill(x, y, inactiveColor); % Turn off
end
