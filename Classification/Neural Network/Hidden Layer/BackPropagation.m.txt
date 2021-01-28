function
[DeltaD,DeltaF]=BackPropagation_Team15(X,Y,Result,WeightFinal,Hidden_Layers
,DeltaD,DeltaF)
 ErrorF= Result-Y';
 Input = [1;Hidden_Layers(:,1)];
 Error(:,1) = (WeightFinal'*(ErrorF)).*(DerivSigmoid_Team15(Input));
 DeltaD=DeltaD+ErrorF*Input';

 Err = Error(2:size(Error,1),1);
 Input = [1,X];
 DeltaF=DeltaF+Err*Input;
end