%Marcin Sawczuk
function result = f2_2( ~, x )
%funkcja definiuj�ca zlinearyzowany system przyk�ad 2
    result = zeros(size(x));
    result(1) = -x(1);
    result(2) = 0;
end