function[lambda, u, numIters] = power_method(A, u, tol)
numIters = 1;
error = 1;
lambda = 10;
while error > tol
    uNext = multiply_mat_vec(A, u)'
    lambda = uNext(1)
    uNext = uNext ./ lambda
    error = minus(uNext, u);
    error = sqrt(sum(error .^ 2))
    u = uNext 
    numIters = numIters + 1
end
end