function [j]=Cost_Team15(X,Y,Output,Weight,WeightInput,WeightFinal,Lambda)
 j=0;
 for i=1:size(X,1)
 Input = [1,X(i,:)];
 [Hidden_Layers(:,1)]=ForwardPropagation_Team15(Input',WeightInput);
 Input = [1;Hidden_Layers(:,1)];
 [Hidden_Layers(:,2)]=ForwardPropagation_Team15(Input,Weight);
Input = [1;Hidden_Layers(:,2)];
 [Output]=ForwardPropagation_Team15(Input,WeightFinal);
 for k=1:size(Y,2)
 j=j+(Y(i,k)*log((Output(k,1))))+((1-Y(i,k))*log(1-
(Output(k,1))));
 end
 end
 j = (-1/size(X,1))*j;
 %Regularisation
 Regul =0;
 for j=2:size(Weight,2)
 for k=1:size(Weight,1)
 Regul = Regul +(Weight(k,j)^2);
 end
 end
 for i=1:size(WeightFinal,1)
 for j=2:size(WeightFinal,2)
 Regul = Regul +(WeightFinal(i,j)^2);
 end
 end
 j=j+(Regul*(Lambda/(2*size(X,1))));
end
