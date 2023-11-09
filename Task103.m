% Define the function to find the root of
f = @(x) x^3 - 2*x - 5;

% Define the initial guesses and the tolerance
a = 2;
b = 3;
tol = 1e-6;

% Initialize an empty matrix to store the roots
roots = [];

% Repeat until the error is less than the tolerance
while abs (f (b) - f (a)) > tol
  % Compute the next approximation using the false position formula
  c = (a * f (b) - b * f (a)) / (f (b) - f (a));
  % Append the approximation to the matrix of roots
  roots = [roots; c];
  % Update the interval based on the sign of f (c)
  if f (c) * f (a) < 0
    b = c;
  else
    a = c;
  endif
endwhile

% Display the final root
disp (["The root is ", num2str (c)]);

% Plot the function and the roots
x = linspace (1, 4, 100); % Define the x values for the plot
plot (x, f (x)); % Plot the function
hold on; % Add to the existing plot
plot (roots, zeros (size (roots)), 'o'); % Plot the roots as circles
hold off; % Release the plot
xlabel ("x"); % Label the x-axis
ylabel ("f (x)"); % Label the y-axis
legend ("f (x)", "roots"); % Add a legend
