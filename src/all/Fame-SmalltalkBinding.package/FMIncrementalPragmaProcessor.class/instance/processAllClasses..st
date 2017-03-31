private
processAllClasses: anArray

	anArray do: [ :each |
		self processClass: each ].