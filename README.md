
# ECE 2112 – Experiment 5: Introduction to MATLAB Programming

**Name:** Maria Daniela C. Sacaben  
**Section:** 2ECE-A

---

## Overview

This experiment introduces MATLAB programming for matrix operations and solving simultaneous linear equations. It focuses on transpose operations for real and complex matrices and solving linear systems using the inverse method and Cramer's Rule.

## Objectives

- Create real and complex matrices in MATLAB.
- Distinguish transpose from complex-conjugate transpose operations.
- Express a simultaneous linear system in matrix form.
- Solve and verify a linear system using the inverse method and Cramer's Rule.

---

## Problem A: Transpose Operations

### Matrices

**Real Matrix R**

```matlab
R = [5 -2  0  7;
     1  3 -4  2;
     6  0  8 -1];
```

**Complex Matrix Z**

```matlab
Z = [ 2+3i, -1+4i, 5-2i;
     -3+1i,     6, 2+5i];
```

### Transpose Expressions

For each matrix, compute and display the following expressions:

- `transpose(A)` – Transposes rows and columns without taking the complex conjugate.
- `A'` – Performs a complex-conjugate transpose.
- `A.'` – Transposes rows and columns without taking the complex conjugate.

### Answers to the Questions

1. **For the real matrix R:** `transpose(R)`, `R'`, and `R.'` produce identical results because all entries are real.

2. **For the complex matrix Z:** `transpose(Z)` and `Z.'` produce identical results.

3. **Apostrophe operator (`'`):** When a matrix contains complex entries, this operator transposes the matrix and takes the complex conjugate, changing the sign of the imaginary parts.

---

## Problem B: Two Methods for a Linear System

### Given System

Solve the following simultaneous equations:

$$
\begin{aligned}
2x_1-x_2+3x_3+2x_4 &= 16\\
x_1+4x_2-2x_3+x_4 &= -7\\
3x_1+2x_2+x_3-x_4 &= 6\\
-2x_1+3x_2+4x_3+2x_4 &= 7
\end{aligned}
$$

### Method 1: Inverse Method

The solution is obtained using the formula:

$$
\mathbf{x}=A^{-1}\mathbf{b}
$$

MATLAB command:

```matlab
x_inv = inv(A) * b;
```

### Method 2: Cramer's Rule

Cramer's Rule calculates each unknown using determinants:

$$
x_j=\frac{\det(A_j)}{\det(A)}
$$

where `A_j` is the coefficient matrix with its \(j\)-th column replaced by the right-hand-side vector `b`.

The solution is stored in `x_cramer`.

### Numerical Checks

The following values must be displayed:

- `det(A)` – The determinant of the coefficient matrix, which must be nonzero.
- `x_inv` – Solution obtained using the inverse method.
- `x_cramer` – Solution obtained using Cramer's Rule.
- `norm(x_inv - x_cramer)` – Checks whether both methods produce the same solution.
- `norm(A*x_inv - b)` – Checks whether the calculated solution satisfies the original system.

Both norm checks should be approximately zero, subject to floating-point precision.

---

## Expected Results

### Determinant

$$
\det(A)=280
$$

### Solution Vector

$$
\mathbf{x}=
\begin{bmatrix}
2\\
-1\\
3\\
1
\end{bmatrix}
$$

Therefore:

- \(x_1=2\)
- \(x_2=-1\)
- \(x_3=3\)
- \(x_4=1\)

Both the inverse method and Cramer's Rule should produce the same solution vector.

### Verification

The following checks should be approximately zero:

```matlab
norm(x_inv - x_cramer)
norm(A*x_inv - b)
```

---

## How to Run the MATLAB Script

1. Open MATLAB.
2. Create a new script.
3. Enter the code for Problem A and Problem B.
4. Save the file as `Sacaben PA5.m`.
5. Run the script from beginning to end.
6. Check the displayed matrices, solution vectors, determinant, and numerical checks.

**Note:** MATLAB's left-division operator (`\`) must not be used as either of the two required solution methods.

---


