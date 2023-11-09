
x = input('Enter matrix x : ');
y = input('Enter matrix y : ');


max_value_x = max(x(:));
fprintf('The maximum value in matrix x is: %f\n', max_value_x);


[mx, nx] = size(x);
[my, ny] = size(y);

if nx == my;

    result_matrix = x * y;
    fprintf('Matrix x multiplied by y:\n');
    disp(result_matrix);
else

    fprintf('Matrix x and y cannot be multiplied due to incompatible dimensions.\n');
end
