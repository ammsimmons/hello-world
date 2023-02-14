% Prompt the user for their height in feet and inches
feet = input('Enter your height in feet: ');
inches = input('Enter the remaining inches: ');

% Convert the input from feet and inches to centimeters
total_inches = (feet * 12) + inches;
cm = total_inches * 2.54;

% Display the result
fprintf('Your height is %.2f centimeters\n', cm);
