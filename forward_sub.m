function X = forward(L,B)
%This function solve a lower triangular system using forkward substitution
%where L is unit lower triangular
S=size(L);
m=S(1);
if S(1)~=S(2)
    error('matrix mast be square')
end
m = size(B);
m = n(1);
X=half(zeros(m));
X(1,1)=b(1)./L(1,1);
%bacward substitution
for k=2:m
        x(1,k)=1/(B(k)-sum(L(k,k-1:-1:1).*x(k-1:-1:1)));
end
x=x';
end