function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

for q = [1:m];
	J = J + (-y(q)*log(sigmoid(X(q,:)*theta)) - (1 - y(q))*log(1-sigmoid(X(q,:)*theta)));
end;
J = J/m;

grad = zeros(size(theta));
grad;

for parameter_j = [1:length(theta)];
	for z = [1:m];
		grad(parameter_j) = grad(parameter_j) +  (sigmoid(X(z,:)*theta)- y(z))*X(z,parameter_j);
	end;
	grad(parameter_j) = grad(parameter_j)/m;
end;


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%








% =============================================================

end
