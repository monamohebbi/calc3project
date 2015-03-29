function[lambda, v, numIters] = power_method(A, u, tol)
numIters = 0
error = 1
lambda = 10
while error > tol
    uNext = multiply_mat_vec(A, u)'
    lambda = sqrt(sum(uNext .^ 2))
    error = minus(uNext, u)
    error = sqrt(sum(error .^ 2))
    u = normal(uNext)
    numIters = numIters + 1
    %error magnitude of uk+1 - uk <= tol
end

%while max error is greater than tolerance
%recalculate error at the end of the 

%replace with matrix read in from file
%matA = [2 -12; 1 -5];
