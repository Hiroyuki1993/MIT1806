function N = nullbasis(A)
  [R, pivcol] = rref(A, sqrt(eps));
  [m, n] = size(A);
  r = length(pivcol);
  freecol = 1:n;
  freecol(pivcol) = [];
  N = zeros(n, n-r);
  N(freecol, :) = eye(n-r);
  N(pivcol, :) = -R(1:r, freecol);