% Constants
g_earth = 9.81; % acceleration due to gravity on Earth (m/s^2)
g_moon = 1.62; % acceleration due to gravity on the Moon (m/s^2)
g_mars = 3.71; % acceleration due to gravity on Mars (m/s^2)

% Input weight in kilograms
weight_kg = input('Enter your weight in kilograms: ');

% Calculate weight on the Moon and Mars
weight_moon = weight_kg * g_moon / g_earth;
weight_mars = weight_kg * g_mars / g_earth;

% Output results
fprintf('Your weight on the Moon is %.2f kilograms.\n', weight_moon);
fprintf('Your weight on Mars is %.2f kilograms.\n', weight_mars);
