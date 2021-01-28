function p = predictOneVsAll_team15(all_theta, X)
m = size(X, 1);
num_labels = size(all_theta, 1);
% Add ones to the X data matrix
X = [ones(m, 1) X];
A=sigmoid_team15(all_theta*X');
[maxVal maxInd] = max(A);
p=maxInd';
end
