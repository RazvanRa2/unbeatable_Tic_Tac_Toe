function boardChar = dispSw(number, player)
%pune spatiu daca nimeni nu a mutat intr-o "celula"
%pune X pentru X si O pentru O in loc de 1 si -1
boardChar=' ';

	if number == -1 && player == 1
		boardChar = 'X';
	end
	if number == -1 && player == 2
		boardChar = 'O';
	end

	if number == 1 && player == 1
		boardChar = 'O';
	end
	if number == 1 && player == 2
		boardChar = 'X';
	end
	%4 cazuri in functie de cum a ales user-ul sa joace (cu X sau cu O)
end
