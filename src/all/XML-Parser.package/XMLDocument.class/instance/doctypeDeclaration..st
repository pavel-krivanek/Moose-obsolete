accessing
doctypeDeclaration: aDoctypeDeclaration
	doctypeDeclaration
		ifNotNil: [doctypeDeclaration parent: nil].

	aDoctypeDeclaration
		ifNotNil: [
			aDoctypeDeclaration hasParent
				ifTrue: [
					"remove it from its current parent"
					aDoctypeDeclaration parent doctypeDeclaration: nil].
			aDoctypeDeclaration parent: self].

	doctypeDeclaration := aDoctypeDeclaration.