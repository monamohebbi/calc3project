function[resultingVec] = multiply_mat_vec(mat, vec)
    [rows cols] = size(mat);
    resultingVec = [];
    for i = 1:rows
       vecFromMat = mat(i, :);
       dotProduct = sum(vecFromMat .* vec);
       resultingVec = [resultingVec; dotProduct];
    end
end
