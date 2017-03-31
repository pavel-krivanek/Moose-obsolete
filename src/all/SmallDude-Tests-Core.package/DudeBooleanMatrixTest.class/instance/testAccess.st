testing
testAccess
	| matrix elemCount |
	matrix := DudeBooleanMatrix rows: 10 columns: 20.
	matrix at: 5 and: 10 put: true.
	matrix at: 5 and: 11 put: true.
	matrix at: 5 and: 12 put: true.
	matrix at: 6 and: 11 put: true.
	matrix at: 7 and: 12 put: true.
	self assert: (matrix at: 5 and: 10) equals: true.
	self assert: (matrix at: 6 and: 11) equals: true.
	self assert: (matrix at: 7 and: 12) equals: true.
	elemCount := 0.
	matrix
		withDiagonalsDo: [ :diag :diagNo | 
			diag
				do: [ :elem | 
					elem
						ifTrue: [ elemCount := elemCount + 1 ] ] ].
	self assert: elemCount equals: 5