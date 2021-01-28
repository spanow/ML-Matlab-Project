A = load('dataset.txt');
B = load('datasetY2.txt');
T = load('dataset.txt');
INPUT = A(1:40000,:);
OUTPUT = B(1:40000,:);
A=[ones(size(OUTPUT)),INPUT];
OUTPUTtest = B(40001:68780,:);
lambda = 0.5;
C=projetIAfeatureNormalize_TEAM_15(A);
TEST = T(40001:68780,:);
TESTING = [ones(size(OUTPUTtest)),TEST];
TESTING = projetIAfeatureNormalize_TEAM_15(TESTING);
iterations =20000;
alpha = 0.0001;
theta = zeros(size(A,2), 1);
[theta,Vect] =
projetIAGradientDecent_TEAM_15(C,OUTPUT,theta,alpha,iterations,lambda);
%Plot the convergence graph
plot(1:numel(Vect), Vect, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');
% Display gradient descent's result
fprintf('Theta computed from gradient descent: \n');
fprintf(' %f \n', theta);
fprintf('\n');
sum=0;
test = [];
disp(OUTPUT(1));
error = 0;
%test
for i= 1 : 28780
 test= TESTING(i,:)*theta;
 if(sqrt((test - OUTPUTtest(i,:)))^2 > 7)
 error = error +1;
 end
 erreur = sqrt((test - OUTPUTtest(i,:)))^2;
 sum = sum+erreur;
end
disp(sum/ 28780);
taux = (28780 - 6694)*100/28780;
disp(taux); %taux de réussite