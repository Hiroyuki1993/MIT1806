function [E, R] = elim(A)
  [m, n] = size(A);
  I = eye(m)
  RE = rref([A I]);
  R = RE(:, 1:n);
  E = RE(:, (n+1):(m+n));