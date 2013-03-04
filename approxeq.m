function [ans] = approxeq(epsilon, u11, u12, u21, u22)
%   approxeq    Return YES or NO depending on whether the circuits are
%               approximately equivalent.
%

U = [u11 u12; u21 u22];
diff = U - U^3;
e_upper = sqrt(norm(diff * [1; 0])^2 + norm(diff * [0; 1])^2);

if (e_upper < epsilon)
    ans = 'YES';
else
    ans = 'NO';
end
