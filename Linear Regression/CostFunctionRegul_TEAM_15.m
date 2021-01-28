function [J] = CostFunctionRegul_TEAM_15(X, y, theta, lambda)
m = length(y); % number of training examples
J = 0;

h = (X * theta);
cost = (1 / (2 * m)) * sum((h - y) .^ 2);
regularis = (lambda / (2 * m)) * sum(theta(2:20) .^ 2);
% Regularized cost is just summation.
J = cost + regularis;
end