function [p,e] = project(A,b)
  P = projmat(A);
  p = P*b;
  e = b-p;