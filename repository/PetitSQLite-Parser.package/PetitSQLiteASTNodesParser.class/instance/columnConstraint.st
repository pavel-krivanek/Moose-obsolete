statements
columnConstraint

	^super columnConstraint ==> [ :token | 
		| const |
		
		const := SQLColumnConstraintNode new.
		
		token second do: [:colConstraint | 
								(colConstraint asString match: 'default') ifTrue: [
									(token second second size > 1)
										ifTrue: [const defaultValue:  token second second second] 
										ifFalse: [const defaultValue:  token second second first]].
								(colConstraint asString match: 'primary key') ifTrue: [const isPK: true].
								(colConstraint asString match: 'not null') ifTrue: [const canBeNull: false.].
								(colConstraint asString match: 'unique') ifTrue: [const isUnique: true]].
		const]
