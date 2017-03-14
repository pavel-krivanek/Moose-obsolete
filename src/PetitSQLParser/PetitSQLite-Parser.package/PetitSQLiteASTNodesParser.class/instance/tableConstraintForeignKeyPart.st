statements-elements
tableConstraintForeignKeyPart 

	^super tableConstraintForeignKeyPart ==> [:token | 
		| newConstr pkColumnsList |

		newConstr := SQLTableConstraintNode new.

		newConstr isFKConstraint: true.

		token second do: [:el | el isString ifTrue: [newConstr addFKColumnName: el]].
		
		newConstr referencedTableName: token third second.	

		pkColumnsList := token third third.

		pkColumnsList isCollection 
			ifTrue: [ pkColumnsList second do: [:el |
				el isCollection ifTrue: [newConstr addPKColumnName: el first]]].

		newConstr]