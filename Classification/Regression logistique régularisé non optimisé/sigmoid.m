A=sigmoid(all_theta*X');
[maxVal maxInd] = max(A);
p=maxInd';
function g = sigmoid_team15(z)
%SIGMOID Compute sigmoid functoon
% J = SIGMOID(z) computes the sigmoid of z.
g = 1 ./ (1 + exp(-z));
end
end