function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
j = zeros(m,1);
x = X(:,2);
for i=1:m
	j(i) = y(i) - theta(1) - x(i)*theta(2);
	j(i) = square(j(i));
end

j=j';
J=sum(j)/(2*m);

%cost function
% =========================================================================




function [x] = square(x)
	x =x*x;

