statements-elements
alterTableConstraintUnique
	^ super alterTableConstraintUnique
		==> [ :token | 
			| newConstr |
			newConstr := SQLTableConstraintNode new.
			token first ifNotNil: [ newConstr name: token first second ].
			newConstr isUnique: true.
			(token at: 4)
				do: [ :el | 
					el isString
						ifTrue: [ newConstr addUniqueColumnName: el ] ].
			newConstr ]