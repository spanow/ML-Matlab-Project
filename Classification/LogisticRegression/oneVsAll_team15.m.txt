function [all_theta,J_history] = oneVsAll_team15(X, y,
num_labels,iterations, lambda)
% Some useful variables
m = size(X, 1);
n = size(X, 2);
% You need to return the following variables correctly
all_theta = zeros(num_labels, n + 1);% n+1 le 1 correspond a la collone de
1 ajouté
% Add ones to the X data matrix
X = [ones(m, 1) X];
J_history = zeros(iterations, num_labels);
for c=1:num_labels
initial_theta=zeros(n+1,1);
% % Set options for fminunc
options = optimset('GradObj', 'on', 'MaxIter', iterations);
[theta,J]= fmincg (@(t)(lrCostFunction_team15(t, X, (y == c),
lambda)),initial_theta, options);
all_theta(c,:)=theta(:);

 % history for the iteration.
 if (length(J)<iterations)
 aux = zeros(iterations - length(J),1);
 aux(:) = J(length(J));
 J = [J;aux];
 J_history(:, c) = J;
 else
 J_history(:, c) = J;
 end
end
end