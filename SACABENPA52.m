
%% PROBLEM B: TWO METHODS FOR A LINEAR SYSTEM

% Given simultaneous equations:
% 2x1 - x2 + 3x3 + 2x4 = 16
% x1 + 4x2 - 2x3 + x4 = -7
% 3x1 + 2x2 + x3 - x4 = 6
% -2x1 + 3x2 + 4x3 + 2x4 = 7

% Define the coefficient matrix A.
A = [ 2 -1  3  2;
    1  4 -2  1;
    3  2  1 -1;
    -2  3  4  2];

% Define the right-hand-side vector b.
b = [16; -7; 6; 7];

% Display the coefficient matrix and vector b.
disp('Coefficient matrix A:');
disp(A);

disp('Right-hand-side vector b:');
disp(b);

%% DETERMINANT OF A

% Calculate the determinant of A.
det_A = det(A);

disp('Determinant of A:');
disp(det_A);

% The determinant must be nonzero to use the inverse method
% and Cramer's Rule.
if det_A == 0
    error('The determinant of A is zero.');
end

%% METHOD 1: INVERSE METHOD

% Formula: x = inv(A) * b
x_inv = inv(A) * b;

disp('Solution using the inverse method (x_inv):');
disp(x_inv);

%% METHOD 2: CRAMER'S RULE

% Formula: x(j) = det(A_j) / det(A)
% A_j is A with column j replaced by b.

n = length(b);
x_cramer = zeros(n, 1);

for j = 1:n
    A_j = A;
    A_j(:, j) = b;

    x_cramer(j) = det(A_j) / det_A;
end

disp('Solution using Cramers Rule (x_cramer):');
disp(x_cramer);

%% NUMERICAL CHECKS

% Compare the solutions from both methods.
disp('norm(x_inv - x_cramer):');
disp(norm(x_inv - x_cramer));

% Verify that A*x_inv is equal to b.
disp('norm(A*x_inv - b):');
disp(norm(A*x_inv - b));
