function C = colbasis(A)
  [R, pivcol] = rref(A);
  C = A(:, pivcol);