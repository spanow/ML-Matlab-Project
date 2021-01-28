function [j]=Cost(X,Y,Output,WeightInput,WeightFinal,Lambda,Position)
 j=0;
 for i=1:size(X,1)
 for k=1:size(Y,2)

 j=j+ WeightInput * X + WeightFinal*(WeightInput * X ));
 end
 end
 j = (-1/size(X,1))*j;
 %Regularisation
 Regul =0;
 for i=1:size(WeightInput,1)
 for j=2:size(WeightInput,2)
 Regul = Regul +(WeightInput(i,j)^2);
 end
 end
 for i=1:size(WeightFinal,1)
 for j=2:size(WeightFinal,2)
 Regul = Regul +(WeightFinal(i,j)^2);
 end
 end
 j=j+(Regul*(Lambda/(2*size(X,1))));
end