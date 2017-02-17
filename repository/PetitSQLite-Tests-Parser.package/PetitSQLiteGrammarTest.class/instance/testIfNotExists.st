tests
testIfNotExists
	self 
		parse: ' IF NOT EXISTS' "result should be 'IF NOT EXISTS' "
		rule: #ifNotExists.
	
	self 
		parse: 'If Not ExiStS ' "result should be 'If Not EciStS' "
		rule: #ifNotExists.