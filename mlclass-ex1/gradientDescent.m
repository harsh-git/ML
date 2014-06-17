function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
alpha = alpha/(2*m);
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

	

	theta(1) = theta(1) + 2*alpha*thetagrad(X,y,theta,1);
	theta(2) = theta(2) + 2*alpha*thetagrad(X,y,theta,2);




    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

J_history

end


function [delcost] = thetagrad(X,y,theta,flag)
x = X(:,2);
m = length(x);
delcost = zeros(m,1);

for i=1:m
	if flag!=1
	 flag = x(i);
	end
	
	delcost(i) = y(i)*flag - theta(1)*flag - theta(2)*x(i)*flag;
	
end
delcost = sum(delcost);
