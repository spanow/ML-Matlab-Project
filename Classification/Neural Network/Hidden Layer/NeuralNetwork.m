function [Costvect,Result,WeightInput,WeightFinal] =
NeuralNetwork_Team15(X,Y,WeightInput,WeightFinal,Hidden_Layers,Nbr_Iteratio
n,Lambda,Alpha)
 Costvect=[];
 DeltaD = zeros(size(Y,2),size(Hidden_Layers,1)+1);
 DeltaF = zeros(size(Hidden_Layers,1),size(X,2)+1);
 %Repétition jusqu'au un nombre max d'itération
 for i=1:Nbr_Iteration
 %Parcourir tous les echantillons
 for z=1:size(X,1)
 %ForwardPropagation
 Input = [1,X(z,:)];

[Hidden_Layers(:,1)]=ForwardPropagation_Team15(Input',WeightInput);

 Input = [1;Hidden_Layers(:,1)];
 [Result]=ForwardPropagation_Team15(Input,WeightFinal);

 %BackPropagation

[DeltaD,DeltaF]=BackPropagation_Team15(X(z,:),Y(z,:),Result,WeightFinal,Hid
den_Layers,DeltaD,DeltaF);

 end

 %D de derniere couche
 DD=(DeltaD/size(X,1));
 for k=1:size(DD,1)
 for j=2:size(DD,2)
 DD(k,j) = DD(k,j)+Lambda*WeightFinal(k,j) ;
 end
 end
 %D des inputs
 DF=(DeltaF)/size(X,1);
 for k=1:size(DF,1)
 for j=2:size(DF,2)
 DF(k,j) = DF(k,j)+Lambda*WeightInput(k,j) ;
 end
 end
 WI=WeightInput-Alpha*DF;
 WeightInput= WI;
 WF=WeightFinal-Alpha*DD;
 WeightFinal = WF;
 %Cost

[j]=Cost_Team15(X,Y,Result,WeightInput,WeightFinal,Lambda,Hidden_Layers);
 Costvect=[Costvect;j];
 disp(i);
 end
