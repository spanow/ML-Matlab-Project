function [J, grad] = lrCostFunction_team15(theta, X, y, lambda)
% Initialize some useful values
m = length(y); % number of training examples
% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));
h=sigmoid_team15(X*theta);
reg_term_0=theta.^2;
reg_term_0(1)=0;
J=sum(-y.*log(h)-(1-y).*log(1-h))*(1/m)+sum(reg_term_0)*((lambda)/(2*m));
reg_term=theta*(lambda/m);
reg_term(1)=0;
grad=(X'*(h-y))*(1/m)+reg_term;
end