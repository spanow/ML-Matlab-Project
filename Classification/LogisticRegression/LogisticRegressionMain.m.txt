%--------------------------------------------------------------------------
-------------------------------------------------------------
 %=============================================optimisation des
parameteres avec diférents valeur de
lambda===========================================
fprintf('\n Optimazing parameters, testing differents lambda...')
lambda_test = [ 0.1,0.09,0.08,0.07,0.06,0.05,0.04,0.03,0.02,0.01,0];
plotBiasVsVariance15(x_train, y_train, x_test, y_test, iterations,
num_labels, lambda_test);
%--------------------------------------------------------------------------
-------------------------------------------------------------
 %=============================================1- training
logistique regression fmincg===========================================


fprintf('\nTraining One-vs-All Logistic Regression...\n')
lambda = 20;
iterations=1000;
[all_theta,j_h] = oneVsAll_team15(x_train,y_train, num_labels,iterations,
lambda);
% Plot the convergence graph
plotCost_team15(j_h,'fmincg');
fprintf('Program paused. Press enter to continue.\n');
pause;
%*************************************** predict value one vs
all*****************************************************
%1- training
pred = predictOneVsAll_team15(all_theta, x_train);
%2- validation
predvalid = predictOneVsAll_team15(all_theta, x_valid);
%3- testing
predtest = predictOneVsAll_team15(all_theta, x_test);
plotDecisionBoundary_team15(all_theta, x_test, y_test);
%*********************************************Calcule de Score
("Accurancy")********************************************
fprintf('\nvalidation Set Accuracy: %f\n', mean(double(predvalid ==
y_valid)) * 100);
fprintf('\nTesting Set Accuracy: %f', mean(double(predtest == y_test)) *
100);
