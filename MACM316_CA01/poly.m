function [result] = poly(a,n,x)
%POLY Summary of this function goes here
%   Detailed explanation goes here
result = 0;
msg1 = 'error: n needs to be positive.';
if n<0 
    error(msg1)
end
msg2 = 'error: smaller than machine epsilon and will be estimate as zero.';
msg3 = 'error: n needs to be an integer.';
if n~=floor(n) 
    error(msg3)
end
for k = 0:n
    c = nchoosek(n,k);
    result = result + c*x.^(n-k)*(-a).^k;
%     if result < eps
%         error(msg2)
%     end
end

end

