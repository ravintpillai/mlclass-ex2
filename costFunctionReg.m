function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

J = J + (-y(1)*log(sigmoid(X(1,:)*theta)) - (1-y(1))*log(1-sigmoid(X(1,:)*theta)));

for i = [2:m];
	J = J + (-y(i)*log(sigmoid(X(i,:)*theta)) - (1-y(i))*log(1-sigmoid(X(i,:)*theta)));
end;

J = J/m;

for j = [2:size(X , 2)];
	J = J + (lambda/(2*m))*theta(j)^2;
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Q = 0;
for i = [1:m];
	Q = Q + (sigmoid(X(i,:)*theta) - y(i))*X(i,1);
end;

grad(1) = Q/m;

for element = [2:length(theta)];
	beta = 0;
	for i = [1:m];
		beta = beta+(sigmoid(X(i,:)*theta) - y(i))*X(i, element);
	end;
	grad(element) = beta/m;
end;

for element = [2:length(theta)];
	grad(element) = grad(element)+(lambda/m)*theta(element);
end;


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
