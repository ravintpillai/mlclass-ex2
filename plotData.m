function plotData(X, y)

%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

positions_of_group_one = find(y==0);
positions_of_group_two = find(y==1);

plot(X(positions_of_group_one, 1), X(positions_of_group_one, 2), 'k+',...
 'LineWidth', 2, 'MarkerSize', 6)

plot(X(positions_of_group_two, 1), X(positions_of_group_two, 2), 'ko',...
     'LineWidth', 2, 'MarkerFaceColor', 'y', 'MarkerSize', 6)


% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
% =========================================================================




hold off;

end
