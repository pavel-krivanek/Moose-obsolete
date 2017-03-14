tests
testView
	self 
		parse: ' VIEW ' "result should be 'VIEW' "
		rule: #view.

	self 
		parse: ' ViEw ' "result should be 'ViEw' "
		rule: #view.