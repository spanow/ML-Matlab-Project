function
[Delta,DeltaD,DeltaF]=BackPropagation_Team15(X,Y,Result,Weight,WeightFinal,
Hidden_Layers,Delta,DeltaD,DeltaF)
 ErrorF= Result-Y';
 Input = [1;Hidden_Layers(:,2)];
 Error(:,1) = (WeightFinal'*(ErrorF)).*(DerivSigmoid_Team15(Input));
 DeltaD=DeltaD+ErrorF*Input';
 j=2;

 Input = [1;Hidden_Layers(:,1)];
 Err = Error(2:size(Error,1),j-1);
 Error(:,j) = (Weight'*Err).*DerivSigmoid_Team15(Input);
 Delta(:,:,1)=Delta(:,:,1)+Err*Input';
 j=j+1;

 Err = Error(2:size(Error,1),j-1);
 Input = [1,X];
 DeltaF=DeltaF+Err*Input;
end
