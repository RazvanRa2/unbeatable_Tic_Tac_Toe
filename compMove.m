function move = compMove(board,turn)

	move = -1; %default nu mut nicaieri
	value = -1; %scor final al unei mutari
	tempValue = -2; %scor temporar

	if turn == 1 %daca joaca cu x, incepe mereu in colt (atribui direct)
		move = 1;
	elseif turn == 2%daca joaca cu o, mereu in centru (atribui direct)
		move = 5;
	else
		for i = 1:9 %verifica fiecare "celula"
			if board(i) == 0 %daca e goala
				board(i) = 1; %o ocupa
				tempValue = (-1) * minimax(board, (-1)); %minimax
				board(i) = 0; %goleste celula dupa verificare
				if tempValue > value %daca scorul mutarii e bun
					value = tempValue;
					move = i; %face mutarea
				end
			end
		end

	end

end
