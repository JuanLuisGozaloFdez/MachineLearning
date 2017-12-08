function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.elong 
%
% Note: You can use a for-loop over the centroids to compute this.
%
for k=1:K
%   printf('k = %u \n', k );
   tempData = mean(X(idx==k,:));
%   [i j] = size (tempData);
%   printf('Mean has a dimension %u x %u \n', i, j );
%   printf('%f \n', tempData);
%   if  (i != 0)
       centroids(k,:) = tempData;
%   endif
endfor


%printf('X has a dimension %u x %u \n', m, n);
%printf('centroids has a dimension %u x %u \n', K, n);
%
%for k=1:K
%   printf('k = %u \n', k );
%   tempData = mean(X(idx==k,:));
%   [i j] = size (tempData);
%   printf('Mean has a dimension %u x %u \n', i, j );
%   printf('%f \n', tempData);
%   if  (i != 0)
%       centroids(k,:) = tempData;
%   endif
%endfor

% =============================================================

end

