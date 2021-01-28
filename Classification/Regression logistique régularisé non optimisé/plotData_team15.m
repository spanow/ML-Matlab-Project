function plotData_team15(data)
% and o for the negative examples. X is assumed to be a Mx2 matrix.
m = size(data, 1);
y=data(:,7);
% Create New Figure
figure; hold on;
% Find Indices of Positive and Negative Examples
a = find(y==1);
b = find(y == 2);
c = find(y == 3);
d = find(y == 4);
e = find(y == 5);
f = find(y == 6);
g = find(y == 7);
% Plot Examples
plot(data(a,1 ), data(a, 4), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
plot(data(b, 1), data(b, 4), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize',
7);
plot(data(c, 1), data(c, 4), 'kx', 'MarkerFaceColor', 'b', 'MarkerSize',
7);
plot(data(d, 1), data(d, 4), 'ks', 'MarkerFaceColor', 'g', 'MarkerSize',
7);
plot(data(e, 1), data(e, 4), 'kd', 'MarkerFaceColor', 'r', 'MarkerSize',
7);
plot(data(f, 1), data(f, 4), 'k-', 'MarkerFaceColor', 'y', 'MarkerSize',
7);
plot(data(g, 1), data(g, 4), 'k*', 'MarkerFaceColor', 'r', 'MarkerSize',
7);
legend('bending 1', 'bending
2','cycling','lying','sitting','standing','walking');
title('ARMe');
xlabel('features');
ylabel('Activity');
hold off;
end