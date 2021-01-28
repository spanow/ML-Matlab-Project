%Test de Decision Tree
Correct = 0
Incorrect = 0
for i=1:size(Testing,1)
 XTest= Training(i,1:6);
 Input = [1,XTest];
 [Hidden_Layers(:,1)]=ForwardPropagation(Input',WeightInput);
 Input = [1;Hidden_Layers(:,1)];
 [Hidden_Layers(:,2)]=ForwardPropagation(Input,Weight);
 Input = [1;Hidden_Layers(:,2)];
 [Result]=ForwardPropagation(Input,WeightFinal);
 [Max,I]=max(Result);
 if(I==Testing(i,7))
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
