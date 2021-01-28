Nbr_result=7;
Nbr_Hidden_Units = int8((size(Training,2)-1)*3/4);
%tableau de la couche caché
Nbr_Hidden_Layer = 2;
Hidden_Layers = zeros(Nbr_Hidden_Units,Nbr_Hidden_Layer);
%Matrices des resultats (Output))
Y = zeros(size(Training,1),Nbr_result);
%Mettre les resultats à 0 et 1
for i=1:size(Y,1)
 Y(i,Training(i,7))=1;
end
X = Training(:,1:6);
Nbr_Feature = size(Training,2)-1;
%Valeur d'epsilon - a ne pas depasser par theta lors d'initialisation
Init_Epsilon =sqrt(2/(7+5));
%les poids relative à la couche input
WeightInput = rand(Nbr_Hidden_Units,Nbr_Feature+1)*Init_Epsilon;
%les poids relative à les couches cachées
Weight = rand(Nbr_Hidden_Units,Nbr_Hidden_Units+1)*Init_Epsilon;
%les poids relative à les couches finale
WeightFinal = rand(Nbr_result,Nbr_Hidden_Units+1)*Init_Epsilon;
%Nombre d'itération max
Nbr_Iteration = 200;
Alpha = 0.00001;
Lambda = 0.01;
[Costvect,Result,WeightInput,Weight,WeightFinal] =
NeuralNetwork_Team15(X,Y,WeightInput,Weight,WeightFinal,Hidden_Layers,Nbr_I
teration,Lambda,Alpha);
figure;
%Affichage de la fonction J
plot(Costvect)
%Mettre une clé pour le graphe (le nom de la courbe)
legend('Cost function');
%Mettre un nom pour les deux axes
xlabel('Iteration');
ylabel('J(Theta)');
%Mettre un titre pour le graphe
title('Cost function');