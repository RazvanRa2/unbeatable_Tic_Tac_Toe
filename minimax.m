function value = minimax(board, nowPlaying)

	move = -1; %valori default
	value = -2; %scorul final returnat
	currentValue = -2; %scorul pentru cazul curent

	if checkWin(board) != 0 %daca s-ar castiga
		value = checkWin(board) * nowPlaying;
	else
		for i = 1:9 %pentru fiecare celula de pe tabla
			if board(i) == 0 %daca poate muta acolo
				board(i) = nowPlaying; %muta acolo
				currentValue = (-1) * minimax(board, nowPlaying * (-1));
				%verifica recursiv consecintele mutarii
				if currentValue > value %daca mutarea ar fi buna
					value = currentValue;
					move = i; %ar muta acolo
				end
				board(i) = 0; %s-a terminat verificarea pt celula aceea
		end
	end

	if value == -1 %daca scorul unei mutari e negativ
		value = 0; %scorul devine 0
	end
end
