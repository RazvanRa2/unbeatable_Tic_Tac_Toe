function win = checkWin(board)

win = 0; %daca nu e indeplinita nicio conditie, nimeni nu a castigat inca

%verificare pentru calculator

%verificare pe linii
if board(1) == 1 && board(2) == 1 && board(3) == 1
	win = 1;
end
if board(4) == 1 && board(5) == 1 && board(6) == 1
	win = 1;
end
if board(7) == 1 && board(8) == 1 && board(9) == 1
	win = 1;
end

%verificare pe coloane
if board(1) == 1 && board(4) == 1 && board(7) == 1
	win = 1;
end
if board(2) == 1 && board(5) == 1 && board(8) == 1
	win = 1;
end
if board(3) == 1 && board(6) == 1 && board(9) == 1
	win = 1;
end

%verificare pe diagonale
if board(1) == 1 && board(5) == 1 && board(9) == 1
	win = 1;
end
if board(3) == 1 && board(5) == 1 && board(7) == 1
	win = 1;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%verificare pentru jucator, in aceeasi ordine

if board(1) == -1 && board(2) == -1 && board(3) == -1
	win = -1;
end
if board(4) == -1 && board(5) == -1 && board(6) == -1
	win = -1;
end
if board(7) == -1 && board(8) == -1 && board(9) == -1
	win = -1;
end


if board(1) == -1 && board(4) == -1 && board(7) == -1
	win = -1;
end
if board(2) == -1 && board(5) == -1 && board(8) == -1
	win = -1;
end
if board(3) == -1 && board(6) == -1 && board(9) == -1
	win = -1;
end

if board(1) == -1 && board(5) == -1 && board(9) == -1
	win = -1;
end
if board(3) == -1 && board(5) == -1 && board(7) == -1
	win = -1;
end

end
