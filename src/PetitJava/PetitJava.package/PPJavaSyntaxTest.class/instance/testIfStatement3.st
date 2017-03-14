testing
testIfStatement3

	self parse: '
	if (true) 
		{int a = 0; a = 1;}
	else
		{return false;}'
		rule: #ifStatement