function [all_w, J_history] = GradientDescent_team15(X, y, alpha,
num_iters, num_labels, lambda)
% History of the cost function in each iteration
J_history = zeros(num_iters, num_labels);
% Some useful variables
n = size(X, 2);
% Variable of all optimal weight found for each class or label
all_w = zeros(num_labels, n + 1);
for c = 1:num_labels
 fprintf('\nTraining k: %f', c);
 w = all_w(c, :)';
 for iter = 1:num_iters
 [J, grad] = lrCostFunction_team15(w, X, (y == c), lambda);
 w = (w - (alpha*grad));
 J_history(iter, c) = J;
 end
 all_w(c, :) = w';
end
end