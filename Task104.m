
% Define the function and its derivative
f = @(x) x^3 - 2*x - 5;
fprime = @(x) 3*x^2 - 2;

% Choose an initial guess
x0 = 2;

% Set a tolerance and a maximum number of iterations
tol = 1e-6;
maxiter = 100;

% Initialize the error and the iteration counter
err = inf;
iter = 0;

% Loop until the error is smaller than the tolerance or the maximum number of iterations is reached
while err > tol && iter < maxiter
  % Apply the Newton-Raphson formula
  x1 = x0 - f(x0)/fprime(x0);

  % Compute the error
  err = abs(x1 - x0);

  % Update the current approximation and the iteration counter
  x0 = x1;
  iter = iter + 1;
end

% Display the result
if err <= tol
  fprintf('The root is %f, found in %d iterations.\n', x1, iter);
else
  fprintf('The method did not converge in %d iterations.\n', maxiter);
end
