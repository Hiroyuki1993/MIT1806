function x = partic(A,b)
  % Particular solution of Ax=b
  [m,n] = size(A);
  [Rd, pivcol] = rref([A b]);
  r = length(pivcol);
  if max(pivcol) == n+1
    x = [];
  else
    x = zeros(n,1);
    d = Rd(:,n+1);
    x(pivcol) = d(1:r);
  end
