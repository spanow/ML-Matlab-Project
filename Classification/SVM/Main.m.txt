clear;
clc;
make;
load x_train.txt;
load y_train.txt;
load x_test.txt;
load y_test.txt;
load x_valid.txt;
load y_valid.txt;
model = svmtrain(y_train, x_train, '-s ---SVC -t --linear -c 1 -g 0.07-v 5
-b -h -d 4');
[predicted_validation] = svmpredict(y_valid, x_valid,model);
[predicted_test] = svmpredict(y_test, x_test, model);