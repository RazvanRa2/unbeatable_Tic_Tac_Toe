function move = getPlayerInput(board);

valid = 0; %initial inputul nu e valid

while !valid %cat timp nu e introdus un input valid

	move = input('PlEASE SELECT A VALID CELL TO MAKE YOUR MOVE:');
	if move < 10 && move > 0 %daca mutarea e "pe talba"
		if board(move) == 0 %daca nimeni nu a mutat acolo
			valid = 1; %mutarea e valida
		end
	end
end

end
