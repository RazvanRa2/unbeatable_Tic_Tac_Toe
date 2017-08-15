function [] = dispBoard(board, player)
%afiseaza tabla de joc frumos
disp('	-------------------------------------');
disp('	|               X & O               |');
disp('	-------------------------------------');
disp(['	|     ', dispSw(board(1), player),'     |     ', dispSw(board(2), player),'     |     ', dispSw(board(3), player),'     |']);
disp('	------------+-----------+------------');
disp(['	|     ', dispSw(board(4), player),'     |     ', dispSw(board(5), player),'     |     ', dispSw(board(6), player),'     |']);
disp('	------------+-----------+------------');
disp(['	|     ', dispSw(board(7), player),'     |     ', dispSw(board(8), player),'     |     ', dispSw(board(9), player),'     |']);
disp('	-------------------------------------');

end
