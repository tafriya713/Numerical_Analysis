function retval = task102Bisection(input1, input2)
  % Define the function
  f = @(x) x^2 - 4;
  a = 0;
  b = 10;
  tol = 1e-6;

  iterations = 0;
  root = 0;

  x_vals = [];
  y_vals = [];

  while (b - a) / 2 > tol
      x = (a + b) / 2;
      if f(a) * f(x) < 0
          b = x;
      else
          a = x;
      end

      iterations = iterations + 1;
      x_vals = [x_vals, iterations];
      y_vals = [y_vals, x];

      root = (a + b) / 2;
  end

  fprintf('Root found after %d iterations: %f\n', iterations, root);
  fprintf('y_vals = [');
  for i = 1:length(y_vals)
    fprintf('%f\n', y_vals(i));
  end
  fprintf(']\n');
endfunction
