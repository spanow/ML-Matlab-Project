function [theta, J_history] = projetIAGradientDecent_TEAM_15(X, y, theta,
alpha, num_iters,lambda)
m = length(y);
J_history = zeros(num_iters, 1);
for iter = 1:num_iters
 thetas = zeros(size(X, 2), 1);
 for i = 1:size(X, 2),
 t = theta(i) - alpha * (1 / m) * sum(((X * theta) - y) .* X(:, i));
 thetas(i) = t;
 end
 theta = thetas;
 J_history(iter) = CostFunctionRegul_TEAM_15(X, y, theta, lambda);
end
end