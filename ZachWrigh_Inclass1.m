% InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 
x = 1; 
y = x + x
%%
a = '1';
b = a+a
%The first is sensible because we assign a number to x and can thus do math
%with it. The second doesn't work because we assign a is a string, which can't be added tp itself.
%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x]

a2 = [a a]

x2b = [x; x]
%x2 is an array of numbers (1), while a2 is an array of strings (both called 1)
%x2 is a array with 1 row and 2 columns, x2b is a array with two rows with
%one column
%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; b =2; 

a == b
a = b;
a == b

% the first == comand is 0 because a and b are not equal, we then set a
% equal to b and the == comand syas 1 because they are equal

%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b
%the operation checks whether each number in the array is the same or
%different to the corresponding number in the other array. Only the second
%number, 2, is the same for both (so the == command reads 1 for yes, the
%others are 0 for no)
%explain why this gives an error:

b = [2, 3];
a == b
%we can't use the == command to compare differently sized arrays
%explain why this does not give an error
b = 2;
a == b 
%this command checks if each number in array a is equal to 2, rather than
%comparing differently sized arrays
%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
[oneToTen, oneToTen+10]
%the line works by making an array using the values from the oneToTen array
%and 10 added to each of those values.
% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty
%oneToTenEven=[oneToTen*2]
%oneToTenEven-2={2,4,6,8,10,12,14,16,18,20]
% 2. odd numbers from one to nineteen
%oneToTenOdd=[(oneToTen*2)-1]
%oneToTenOdd-2={1,3,5,7,9,11,13,15,17,19]
% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)
%fliplr(oneToTenEven)

%ans =

   % 20    18    16    14    12    10     8     6     4     2
% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen';
fliplr(oneToTen)
%the fliplr command only reverses the values in each row and will make no change if there's only
%one value in each row. Need to flip values in the column.
% use flipud(oneToTen)
%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
m1*m2
m1.*m2
%m1*m2 multiplies matrices, m1.*m2 multiplies each
%position to the corresponding position of the other matrix
%explain this command:
m2./m1
%divides each position to the corresponding position of the other matrix
%(2/1 for every position)
%extra credit: explain why this command gives a warning:
m2/m1
%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);
%makes a 5x5 array of random numbers (between 0-1)
%explain what is being done in each of the following lines

rand_nums(2,3)
%gives value of position row 2, column 3

rand_nums(2:4,3)
% gives the values of number in 3rd column of rows 2, 3, and 4
rand_nums(1:2,3:4)
% gives the values in columns 3 and 4 of rows 1 and 2
rand_nums(:,2)
%gives the values of everything in column 2
rand_nums(1,:)
%gives the values of everything in row 1
rand_nums(:,[1 3 5])
%gives all values in columns 1, 3, and 5

