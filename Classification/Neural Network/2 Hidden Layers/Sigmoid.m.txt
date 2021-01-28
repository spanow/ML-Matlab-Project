function S=Sigmoid_Team15(X)
 for i=1:size(X,1)
 S(i,1)=1/(1+exp(-X(i,1)));
 end
end