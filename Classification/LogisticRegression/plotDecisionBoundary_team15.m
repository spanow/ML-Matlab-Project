function plotDecisionBoundary_team15(all_theta, x, Y)
%Plot the data with the aditional decision boundary find whit the weight
%vector w.
%REDUCTION DE NOMBRE D'instance pour le plot
P = 0.30 ;
dataC=[x Y];
[m,n] = size(dataC);
idx = randperm(m);
Train = dataC(idx(1:round(P*m)),:) ;
X=Train(:,1:6);
y=Train(:,7);
m = size(X, 1);
num_labels = size(all_theta,1);
X = [ones(m, 1) X];
figure('position', [100, 100, 1200, 300])
for k = 1:num_labels
 %subplot(2,4,k)
 subplot(1,num_labels,k)
 plotDataA_team15(X(:,2:3), y, k);
 axis([2 40 0.5 7.5])
 hold on

 % Only need 2 points to define a line, so choose two endpoints
 plot_x = [min(X(:,2))-2, max(X(:,2))+2];
 % Calculate the decision boundary line
 plot_y = (-1./all_theta(k,3)).*(all_theta(k,2).*plot_x +
all_theta(k,1));
 % Plot, and adjust axes for better viewing
 plot(plot_x, plot_y);
 title(sprintf('Decision Boundary %d',k));
 hold off
end
end