private - backend access
innerBindingOf: aSymbol

	self classVariables detect: [ :each | each name = aSymbol  ] ifFound: [ :found | ^ found ].

	self sharedPoolsDo: [:pool | 
		((self environment ask behaviorNamed: pool name) bindingOf: aSymbol) ifNotNil: [:binding | ^binding]].

	((self owner superclass == self owner) or: [ self owner superclass isNil ]) ifFalse: [ ^ self owner superclass innerBindingOf: aSymbol].	
		
	^ nil