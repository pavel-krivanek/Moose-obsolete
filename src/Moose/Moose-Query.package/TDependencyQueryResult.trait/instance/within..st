filtering
within: aFamixEntity
	^self newAssocResultWith:
		(self storage select: [ :dep | 
			(self isOppositeMultivalued: dep)
				ifTrue: [ (self opposite: dep) anySatisfy: [ :entity |  {aFamixEntity} = (entity atScope: aFamixEntity class) ] ]
				ifFalse: [ {aFamixEntity} = ((self opposite: dep) atScope: aFamixEntity class) ] ])