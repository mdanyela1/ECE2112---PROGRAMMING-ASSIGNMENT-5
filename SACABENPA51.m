%% PROBLEM A: TRANSPOSE OPERATIONS

% real matrix R
R = [5 -2  0  7;
    1  3 -4  2;
    6  0  8 -1];

% complex matrix Z
Z = [ 2+3i, -1+4i, 5-2i;
    -3+1i,     6, 2+5i];

%% TRANSPOSE OPERATIONS FOR MATRIX R

disp('TRANSPOSE OPERATIONS FOR MATRIX R');
disp('Original matrix R:');
disp(R);

disp('transpose(R):');
disp(transpose(R));

disp('R'':');
disp(R');

disp('R.'':');
disp(R.');

%% TRANSPOSE OPERATIONS FOR MATRIX Z

disp('TRANSPOSE OPERATIONS FOR MATRIX Z');
disp('Original matrix Z:');
disp(Z);

disp('transpose(Z):');
disp(transpose(Z));

disp('Z'':');
disp(Z');

disp('Z.'':');
disp(Z.');

%% ANSWERS TO THE QUESTIONS

% a. For the real matrix R, all three operations give identical
%    results: transpose(R), R', and R.'.

% b. For the complex matrix Z, transpose(Z) and Z.'
%    give identical results.

% c. The apostrophe operator (') performs a complex-conjugate
%    transpose. It swaps rows and columns and changes the sign
%    of the imaginary part of each complex entry.
