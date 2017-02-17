statements-elements
alterTableConstraintFKOracle
	^ super alterTableConstraintFKOracle
		==> [ :token | 
			| newConstr |
			newConstr := SQLTableConstraintNode new.
			token first ifNotNil: [ newConstr name: token first second ].
			(token second matches: 'FOREIGN KEY')
				ifTrue: [ 
					newConstr isFKConstraint: true.
					newConstr isPKConstraint: false.
					newConstr isUnique: false ].
			(token at: 4)
				do: [ :el | 
					el isString
						ifTrue: [ newConstr addFKColumnName: el ] ].
			((token at: 6) first matches: 'references')
				ifTrue: [ newConstr referencedTableName: (token at: 6) second ].
			(token at: 6) third second
				do: [ :el | 
					el isCollection
						ifTrue: [ newConstr addPKColumnName: el first ] ].
			newConstr ]