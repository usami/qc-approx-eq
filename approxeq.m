function [ans] = approxeq(epsilon, u11, u12, u21, u22)
%   approxeq    Return YES or NO depending on whether the circuits are
%               approximately equivalent.
%

U = [u11 u12; u21 u22];
e_upper = norm(eye(2) - U^2);

if (e_upper < epsilon)
    ans = 'YES';
else
    ans = 'NO';
end
