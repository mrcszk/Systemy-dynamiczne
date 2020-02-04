%Marcin Sawczuk
function result = f3_2( ~, x )
%funkcja definiująca system zlinearyzowany dla zerowego punktu równowagi dla przykładu 3
    result = zeros(size(x));
    result(1) = x(2);
    result(2) = -2*x(1)-x(2);
end