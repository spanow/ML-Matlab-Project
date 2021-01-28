function plotCost_team15(j_h, vtitle)
% Plot Data
num_labels = size(j_h,2);
if num_labels > 3
 figure('position', [100, 100, 1400, 800])
 for j = 1:2
 for k = 1:num_labels
 subplot(3,4,k)
 plot(1:numel(j_h(:,k)), j_h(:,k), '-r', 'LineWidth', 2);
 xlabel('Number of iterations');
 ylabel('Cost');
 title(k);
 title([vtitle, ' K =',num2str(k), ' Min =',
num2str(j_h(end,k))]);
 end
 end
else
 figure('position', [100, 100, 1200, 300])
 for k = 1:num_labels
 subplot(1,num_labels,k)
 plot(1:numel(j_h(:,k)), j_h(:,k), '-r', 'LineWidth', 2);
 xlabel('Number of iterations');
 ylabel('Cost');
 title([vtitle, ' K =',num2str(k), ' Min =', num2str(j_h(end,k))]);
 end
end
figure()
for k = 1:num_labels
 m = mean(j_h(:,2:end),2);
 plot(1:numel(j_h(:,k)), m, '-r', 'LineWidth', 2);
 xlabel('Number of iterations');
 ylabel('Cost');
end
title(['Total ', vtitle, '. Min = ', num2str(m(end))]);
end
