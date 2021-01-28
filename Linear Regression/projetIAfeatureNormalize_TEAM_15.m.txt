function [Xnormalis, moyenne, stddev] = projetIAfeatureNormalize_TEAM_15(X)
Xnormalis = X;
moyenne = zeros(1, size(X, 2));
stddev = zeros(1, size(X, 2));
for i=2:size(moyenne,2)
 if(i ~= 14 && i~= 10 )
 moyenne(1,i) = mean(X(:,i));
 stddev(1,i) = std(X(:,i));
 Xnormalis(:,i) = ((X(:,i)-moyenne(1,i))/stddev(1,i)) + 1;
 end
end
Xnormalis=Xnormalis + ones(size(Xnormalis))*2.5;
