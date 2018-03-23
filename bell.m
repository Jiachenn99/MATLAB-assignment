function bellTriangle = bell(m)
%The function accepts an input m and based on input,creates an
% m x m matrix

m = input('Enter the number of rows: ');
if m<1   %check if n is a positive integer
    bellTriangle=[];
    return;
end
bellTriangle = zeros(m);
bellTriangle(1,1) = 1; %Setting the top left element to be 1
for row=2:m %Using a loop as the formula for the triangle
  bellTriangle(row, 1:row) = bellTriangle(row-1,row-1) + cumsum([0 bellTriangle(row-1, 1:row-1)]);
end

A=bellTriangle(:,1);
count=m-1;
for i=2:m
    C=circshift(bellTriangle(:,i),count);
    A=[A C];
    count=count-1;
end
bellTriangle=A;