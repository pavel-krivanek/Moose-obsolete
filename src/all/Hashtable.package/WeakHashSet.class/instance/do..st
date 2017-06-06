enumerating
do: aBlock
	self table withIndexDo: [ :each :index |
		| current |
		self fixAt: index.
		current := each.
		[ current notNil ]
			whileTrue: [
				current key ifNotNil: [ :key |
					aBlock value: key ].
				current := current next ] ]