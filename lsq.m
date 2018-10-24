function [xhat, p, e] = lsq(A,b)
  if det(A'*A) == 0
    error('Columns of A are lineary dependent.')
  end
  xhat = partic(A'*A,A'*b);
  p = A*xhat;
  e = b-p;