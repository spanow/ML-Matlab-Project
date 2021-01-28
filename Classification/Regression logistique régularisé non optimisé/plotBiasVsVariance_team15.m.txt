function plotBiasVsVariance_team15( X_train, y_train, X_test, y_test,
alpha, iterations, num_labels, lambda)
% Funtio to test differents values of lambda (regulariazation) and mesure
% the cost.
m = size(X_train, 1);
l = size(X_test, 1);
J = zeros(length(lambda),3);
i = 1;
for l = lambda
 [all_w, j_h] = GradientDescent_team15(X_train, y_train, alpha,
iterations, num_labels, l);
 for k = 1:size(all_w, 1)
 [J_train(k), grad1] = lrCostFunction_team15(all_w(k,:)', X_train,
(y_train == k), 0);
 [J_test(k), grad2] = lrCostFunction_team15(all_w(k,:)', X_test,
(y_test == k), 0);
 end
 J(i,:) = [l, mean(J_train), mean(J_test)];
 i = i+1;
end
figure
plot(J(:,1),J(:,2),J(:,1),J(:,3), 'LineWidth', 2)
ylabel('Cost');
xlabel('Lambda');
legend('Train','Test', 'Location','northwest')
title('Bias vs Varance for Lambda Values')
end
