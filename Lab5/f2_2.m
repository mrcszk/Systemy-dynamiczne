%Marcin Sawczuk
function result = f2_2( ~, x )
%funkcja definiująca zlinearyzowany system przykład 2
    result = zeros(size(x));
    result(1) = -x(1);
    result(2) = 0;
end