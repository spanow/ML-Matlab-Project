function [Result] = ForwardPropagation_Team15 (X, WeightInput)
 z = WeightInput*X;
 Result= Sigmoid_Team15(z);
end