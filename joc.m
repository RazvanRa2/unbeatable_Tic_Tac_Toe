function [] = joc()
clc; %%clc sa arate frumos jocul in terminal
playing = 'y'; %se joaca daca nu se specifica ca nu
humanScore = 0; %initializare scoruri
computerScore = 0;
while playing != 'n' %cat timp nu se opreste jocul
	board = zeros(1,9); %la fiecare joc, initializari
	player = input("SELECT SIDE - X(1), O(2):");%alegere x sau o la fiecare joc
	turn = 1; %arata a cata mutare este
	win = 0; %win arata daca cineva a castigat
	clc;
	while !win && turn <= 9 %cat timp nimeni nu a castigat si nu e remiza
		if mod((turn + player), 2) == 1 %daca e randul calculatorului
			pcMovesHere = compMove(board, turn); %face mutarea
			if pcMovesHere < 1 %daca primul algoritm nu are o mutare sigura
				pcMovesHere = secondaryMove(board);%alege iterativ mutarea
			end
			board(pcMovesHere) = 1; %face mutarea
			win = checkWin(board); %verifica daca mutarea e castigatoare
			turn++; % e randul user-ului
			clc;
		else
			dispBoard(board, player); %afiseaza tabla de joc
			playerMovesHere = getPlayerInput(board); %preia input de la user
			board(playerMovesHere) = -1;
			win = checkWin(board); %verifica daca userul a castigat
							   %DE PARCA AR PUTEA
			turn++;
		end
	end
	clc;
	dispBoard(board, player); %afiseaza tabla de joc si la final de runda
	if win == 0 %remiza
		disp('IT IS A DRAW');
	elseif win == -1 %never
		disp('HUMAN WINS');
		humanScore++;
	elseif win == 1 %calculatorul a castigat
		disp('COMPUTER WINS');
		computerScore++;
	end
	disp('SCORE (HUMAN - COMPUTER):');%dupa fiecare runda afiseaza scorul total
	disp([num2str(humanScore),' - ',num2str(computerScore)]);
	playing = input('KEEP PLAYING? [y/n]','response');
end

end
