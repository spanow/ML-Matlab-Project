A = load('dataset.txt');
B = load('datasetY2.txt');
Nbr_result=1;
Nbr_Hidden_Units = 15;
%tableau de la couche caché
Nbr_Hidden_Layer = 1;
Hidden_Layers = zeros(Nbr_Hidden_Units,Nbr_Hidden_Layer);
%Matrices des resultats (Output))
Y = B(4000,:);
X = A(4000,:);
Nbr_Feature = 19;
%Valeur d'epsilon - a ne pas depasser par theta lors d'initialisation
Init_Epsilon =(sqrt(6)/sqrt(7+6));
%les poids relative à la couche input
WeightInput = rand(Nbr_Hidden_Units,Nbr_Feature+1)*Init_Epsilon;
%les poids relative à les couches finale
WeightFinal = rand(Nbr_result,Nbr_Hidden_Units+1)*Init_Epsilon;
%Nombre d'itération max
Nbr_Iteration = 1;
Alpha = 0.0000000001;
Lambda = 0.001;
[Costvect,Result] =
NeuralNetwork_TEAM_15(X,Y,WeightInput,WeightFinal,Hidden_Layers,Nbr_Iterati
on,Lambda,Alpha);
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
