%Mettre les X et les résultats Y dans des matrices séparées
X = Training(:,1:6);
Y = Training(:,7);
%Appel de fonction prédifinie et récupérér les résultats dans la variable M
M =fitctree(X,Y);
%Affichage de l'arbre
view(M,'mode','graph');
%Affichage de résultats finales
view(M);
%Calculs de feature le plus important
imp = predictorImportance(M);
%Affichage de feature le plus important pas histogramme
figure;
bar(imp);
title('Predictor Importance Estimates');
ylabel('Estimates');
xlabel('Predictors');
h = gca;
h.XTickLabel = M.PredictorNames;
h.XTickLabelRotation = 45;
h.TickLabelInterpreter = 'none';