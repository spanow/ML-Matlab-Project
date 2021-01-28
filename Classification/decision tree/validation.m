%Test de Decision Tree
Correct = 0;
Incorrect = 0;
for i=1:size(Testing,1)
 result = predict(M,Testing(i,1:6));
 if(result==Testing(i,7))
 Correct = Correct+1;
 else
 Incorrect = Incorrect+1;
 end
end
%Calcul de prédiction
Predection = Correct * 100 / size(Testing,1);
fprintf('Prédiction correcte = ');
disp(Correct);
fprintf('\nPrédiction incorrecte = ');
disp(Incorrect);
%Affichage de % de prédiction
disp('Prédiction : %');
disp(Predection);