statements-elements
tableConstraintPrimaryKeyPart
	^super tableConstraintPrimaryKeyPart ==> [:token | 
		| newConstr |

		newConstr := SQLTableConstraintNode new.

		(token first matches: 'PRIMARY KEY') 
			ifTrue: [
				newConstr isPKConstraint: true.
				newConstr isFKConstraint: false.
				newConstr isUnique: false.
				
				token second second do: [:el | el isArray 
								ifTrue: [el first isString 
											ifTrue: [newConstr addPKColumnName: el first]]]].
		
		(token first matches: 'UNIQUE') 
			ifTrue: [
				newConstr isPKConstraint: false.
				newConstr isFKConstraint: false.
				newConstr isUnique: true.
				
				token second second do: [:el | el isArray 
								ifTrue: [el first isString 
											ifTrue: [newConstr addUniqueColumnName: el first]]]].
				
		newConstr]