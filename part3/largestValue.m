function[value] = largestValue(vec)
    value = 0;
    for i = 1:size(vec)
        if vec(i) > value
            value = vec(i);
        end
    end
end