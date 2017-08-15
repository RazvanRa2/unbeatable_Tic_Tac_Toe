function move = secondaryMove(board)
	%saftey checks ca nu trebuie blocat userul de la a castiga imediat
	flag = 0;
	if (board(1) == -1 && board(2) == -1 && board(3) == 0)
		move = 3;
		flag = 1;
	end
	if (board(3) == -1 && board(2) == -1 && board(1) == 0)
		move = 1;
		flag = 1;
	end
	if (board(1) == -1 && board(3) == -1 && board(2) == 0)
		move = 2;
		flag = 1;
	end
	if (board(4) == -1 && board(6) == -1 && board(5) == 0)
		move = 5;
		flag = 1;
	end
	if (board(4) == -1 && board(5) == -1 && board(6) == 0)
		move = 6;
		flag = 1;
	end
	if (board(5) == -1  && board(6) == -1 && board(4) == 0)
		move = 4;
		flag = 1;
	end
	if (board(7) == -1 && board(8) == -1 && board(9) == 0)
		move = 9;
		flag = 1;
	end
	if (board(8) == -1 && board(9) == -1 && board(7) == 0)
		move = 7;
		flag = 1;
	end
	if (board(7) == -1 && board(9) == -1 && board(8) == 0)
		move = 8;
		flag = 1;
	end
	if (board(1)  == -1 && board(4) == -1 && board(7) == 0)
		move = 7;
		flag = 1;
	end
	if (board(1) == -1 && board(7) == -1 && board(4) == 0)
		move = 4;
		flag = 1;
	end
	if (board(4) == -1 && board(7) == -1 && board(1) == 0)
		move = 1;
		flag = 1;
	end
	if (board(2) == -1 && board(5) == -1 && board(8) == 0)
		move = 8;
		flag = 1;
	end
	if (board(8) == -1 && board(2) == -1 && board(5) == 0)
		move = 5;
		flag = 1;
	end
	if (board(5) == -1 && board(8) == -1 && board(2) == 0)
		move = 2;
		flag = 1;
	end
	if (board(3) == -1 && board(6) == -1 && board(8) == 0)
		move = 9;
		flag = 1;
	end
	if (board(9) == -1 && board(6) == -1 && board(3) == 0)
		move = 3;
		flag = 1;
	end
	if (board(3) == -1 && board(9) == -1 && board(6) == 0)
		move = 6;
		flag = 1;
	end
	if (board(1) == -1 && board(9) == -1 && board(5) == 0)
		move = 5;
		flag = 1;
	end
	if (board(1) == -1 && board(5) == -1 && board(9) == 0)
		move = 9;
		 flag = 1;
	end
	if (board(5) == -1 && board(9) == -1 && board(1) == 0)
		move = 1;
		flag = 1;
	end
	if (board(3) == -1 && board(7) == -1 && board(5) == 0)
		move = 5;
		flag = 1;
	end
	if (board(5) == -1 && board(7) == -1 && board(3) == 0)
		move = 3;
		flag = 1;
	end
	if (board(3) == -1 && board(5) == -1 && board(7) == 0)
		move = 7;
		flag = 1;
	end

	if (flag == 0)	%iar daca nu trebuie blocat
		for i = 1:9
			if board(i) == 0 %muta in prima celula libera
				move = i;
				break;
			end
		end
	end

end
