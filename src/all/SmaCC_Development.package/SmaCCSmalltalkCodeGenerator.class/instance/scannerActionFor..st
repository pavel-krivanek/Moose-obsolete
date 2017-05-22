compiling-scanner
scannerActionFor: aString
	| selector current |
	aString size > 2
		ifFalse: [ ^ nil ].
	selector := (aString copyFrom: 2 to: aString size - 1) asSymbol.
	selector numArgs = 0
		ifFalse: [ ^ nil ].
	((SmaCCScanner organization listAtCategoryNamed: #'default token handling') includes: selector)
		ifTrue: [ ^ selector ].
	current := scannerClass.
	[ current notNil and: [ current superclass notNil and: [ current name ~= #SmaCCScanner ] ] ]
		whileTrue: [ (current directlyDefinesMethod: selector)
				ifTrue: [ ^ selector ].
			current := current superclass ].
	^ nil