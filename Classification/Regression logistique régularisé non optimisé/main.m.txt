%definir les label et les features
input_layer_size = 6;
num_labels = 7;
%--------------------------------------------------------------------------
-------------------------------------------------------------
 %=============================================optimisation des
parameteres avec diférents valeur de
lambda===========================================
fprintf('\n Optimazing parameters, testing differents lambda...')
iterations = 60; % Number of iterations gradient descent
alpha = 0.005;
lambda_test = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
plotBiasVsVariance_team15(x_train, y_train, x_test, y_test, alpha,
iterations, num_labels, lambda_test);
%--------------------------------------------------------------------------
-------------------------------------------------------------
 %=============================================1- training
logistique regression gradiant
descent===========================================

fprintf('\nTraining One-vs-All Logistic Regression...\n')
lambda = 0; % Regularization parameter
[all_theta, j_h] = GradientDescent_team15(x_train, y_train, alpha,
iterations, num_labels, lambda);
% Plot the convergence graph
plotCost_team15(j_h,'gradiant descent');
plotDecisionBoundary_team15(all_theta, x_train, y_train);
fprintf('Program paused. Press enter to continue.\n');
pause;
%*************************************** predict value one vs
all*****************************************************
%1- testing
predtest = predictOneVsAll_team15(all_theta, x_test);
%2- validation
predvalid = predictOneVsAll_team15(all_theta, x_valid);
%*********************************************Calcule de Score
("Accurancy")********************************************