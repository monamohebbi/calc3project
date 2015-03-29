function [unitVec] = normal(vec)
    magnitude = sqrt(sum(vec .^ 2))
    unitVec = vec ./ magnitude
end
