cleaning
unifyTrait

	"set all metaclasses of metaclasses to the same object (Metaclass) "

	| aTrait |

	aTrait := self ensureTrait.
	 
	self ask behaviorsDo: [ :each | 
		(each isTrait)
			ifTrue: [ each metaclass: aTrait]].
		
	(self ask behaviors select: [ :each | each isRingResolved not and: [(each propertyNamed: #role) = #trait] ]) do: [:each | self removeBehavior: each  ].
			
