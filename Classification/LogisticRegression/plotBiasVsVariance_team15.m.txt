function plotBiasVsVariance_team15( X_train, y_train, X_test, y_test,
alpha, iterations, num_labels, lambda, optFunct)
m = size(X_train, 1);
n= size(X_test, 1);
J = zeros(length(lambda),3);
i = 1;
for l = lambda
 if optFunct == 1
 [all_w, j_h] = GradientDescen_team15t(X_train, y_train, alpha,
iterations, num_labels, l);
 elseif optFunct == 2
 [all_w, j_h] = quasiNewton_team15(X_train, y_train, num_labels, l,
iterations);
 else
 [all_w, j_h] = fmincgFunction_team15(X_train, y_train, num_labels,
l, iterations);
 end
X = [ones(m, 1), X_train];
disp(X)
X_tes = [ones(n, 1), X_test];
 for k = 1:size(all_w, 1)
 [J_train(k), grad1] = lrCostFunction_team15(all_w(k,:)', X,
(y_train == k),0.1);
 [J_test(k), grad2] = lrCostFunction_team15(all_w(k,:)', X_tes,
(y_test == k),0.1);
 end
 J(i,:) = [l, mean(J_train), mean(J_test)];
 i = i+1;
end
figure
plot(J_train(:,1),J_train(:,2),J_train(:,1),J_train(:,3), 'LineWidth', 2)
ylabel('Cost');
xlabel('Lambda');
legend('Train','Test', 'Location','northwest')
title('Bias vs Varance for Lambda Values')
end