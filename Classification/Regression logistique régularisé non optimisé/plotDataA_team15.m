function plotDataA_team15(X, y, a)
%PLOTDATA Plots the data points X and y into a new figure
% PLOTDATA(x,y) plots the data points with + for the positive examples
% and o for the negative examples. X is assumed to be a Mx2 matrix.
% Create New Figure
hold on;
% Find Indices of Positive and Negative Examples
bending1 = find(y==1); bending2 = find(y == 2); cycling = find(y == 3);
lying = find(y==4); sitting = find(y == 5); standing = find(y == 6);
walking = find(y == 7);
% Plot Examples
if (a==1)||(a==0)
 plot(X(bending1, 1), X(bending1, 2),'k^', 'MarkerFaceColor', 'b', ...
 'MarkerSize', 7);
else
 plot(X(bending1, 1), X(bending1, 2),'k^', 'MarkerFaceColor', [0.5 0.5
0.5], ...
 'MarkerSize', 7);
end
if (a==2)||(a==0)
 plot(X(bending2, 1), X(bending2, 2), 'kd', 'MarkerFaceColor', 'y', ...
 'MarkerSize', 7);
else
 plot(X(bending2, 1), X(bending2, 2), 'kd', 'MarkerFaceColor', [0.5 0.5
0.5], ...
 'MarkerSize', 7);
end
if (a==3)||(a==0)
plot(X(cycling, 1), X(cycling, 2), 'ko', 'MarkerFaceColor', 'g', ...
 'MarkerSize', 7);
else
 plot(X(cycling, 1), X(cycling, 2), 'ko', 'MarkerFaceColor', [0.5 0.5
0.5], ...
 'MarkerSize', 7);
end
if (a==4)||(a==0)
 plot(X(lying, 1), X(lying, 2), 'kd', 'MarkerFaceColor', 'r', ...
 'MarkerSize', 7);
else
 plot(X(lying, 1), X(lying, 2), 'kd', 'MarkerFaceColor', [0.5 0.5 0.5],
...
 'MarkerSize', 7);
end
if (a==5)||(a==0)
 plot(X(sitting, 1), X(sitting, 2), 'kx', 'MarkerFaceColor', 'r', ...
 'MarkerSize', 7);
else
 plot(X(sitting, 1), X(sitting, 2), 'kx', 'MarkerFaceColor', [0.5 0.5
0.5], ...
 'MarkerSize', 7);
end
if (a==6)||(a==0)
 plot(X(standing, 1), X(standing, 2), 'k*', 'MarkerFaceColor', 'g', ...
 'MarkerSize', 7);
else
 plot(X(standing, 1), X(standing, 2), 'k*', 'MarkerFaceColor', [0.5 0.5
0.5], ...
 'MarkerSize', 7);
end
if (a==7)||(a==0)
 plot(X(walking, 1), X(walking, 2), 'ks', 'MarkerFaceColor', 'g', ...
 'MarkerSize', 7);
else
 plot(X(walking, 1), X(walking, 2), 'ks', 'MarkerFaceColor', [0.5 0.5
0.5], ...
 'MarkerSize', 7);
end
ylabel('var_rss12'); % Set the y-axis label
xlabel('avg_rss12'); % Set the X-axis label
legend('bending1', 'bending2', 'cycling',
'lying','sitting','standing','walking');
hold off;
end