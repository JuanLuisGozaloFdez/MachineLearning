function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

%values = [0.01 0.03 0.1 0.3 1 3 10 30];
%error_min = inf; % negative infinitive
%newC = 0;
%newSigma = 0;

%fprintf('LOOKING FOR C AND SIGMA IN A DOUBLE 8 LOOP \n');
%for C = values
%  for sigma = values
%    fprintf('Let C = %f and sigma = %f \n', C, sigma);
%    model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
%    err   = mean(double(svmPredict(model, Xval) ~= yval));
%    if( err <= error_min )
%      newC     = C;
%      newSigma = sigma;
%      error_min   = err;
%      fprintf('We found a new C ( %f ) and a new sigma ( %f ) with error = %f \n', newC, newSigma, error_min)
%    end
%  end
%end
%C     = newC;
%sigma = newSigma;

%fprintf('Set C = %f and sigma = %f with prediction error = %f \n', C, sigma, error_min);


%After processing, the values has been 
C= 1.000000
sigma = 0.100000
% =========================================================================

end
