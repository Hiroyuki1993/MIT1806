function P = projmat(A)
  A = colbasis(A);
  P = A*inv(A'*A)*A';