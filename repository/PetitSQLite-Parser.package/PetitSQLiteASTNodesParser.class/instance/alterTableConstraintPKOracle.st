statements-elements
alterTableConstraintPKOracle
	^ super alterTableConstraintPKOracle
		==> [ :token | 
			| newConstr |
			newConstr := SQLTableConstraintNode new.
			token first ifNotNil: [ newConstr name: token first second ].
			newConstr isPKConstraint: true.
			(token at: 4)
				do: [ :el | 
					el isString
						ifTrue: [ newConstr addPKColumnName: el ] ].
			newConstr ]