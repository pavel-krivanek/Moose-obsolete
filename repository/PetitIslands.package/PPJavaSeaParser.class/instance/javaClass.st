as yet unclassified
javaClass
	^ super javaClass
	
	map: [:_def :_body |
		PJTypeDeclarationNode new
			modifiers: _def first;
			simpleName: _def third;
			methodDeclarations: _body
			yourself
	]