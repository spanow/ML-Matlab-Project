function[DeltaD,DeltaF]=BackPropagation_TEAM_15(X,Y,Result,WeightFinal,Hidd
en_Layers,DeltaD,DeltaF)
 ErrorF= Result-Y';
 Input = [1;Hidden_Layers(:,1)];
 Error(:,1) = (WeightFinal'*(ErrorF)).*(Input);
 DeltaD=DeltaD+ErrorF*Input';
 Err = Error(2:size(Error,1),1);

 Input = [1,X];
 DeltaF=DeltaF+Err*Input;
end
