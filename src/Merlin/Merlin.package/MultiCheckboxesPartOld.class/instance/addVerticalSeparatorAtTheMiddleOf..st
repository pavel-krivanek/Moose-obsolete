morph content setup tools
addVerticalSeparatorAtTheMiddleOf: aCollectionOfElements

	"return a collection containing all initials morph elements from aCollectionOfElements including a vertical separator at the middle"
	|  index result result1 result2 collectionSize |
	collectionSize := aCollectionOfElements size.
	collectionSize even 
		ifTrue: [index :=  collectionSize // 2.]
		ifFalse: [index :=  collectionSize // 2 + 1.].
	
	result := OrderedCollection new.
	result1 := OrderedCollection new.
	result2 := OrderedCollection new.
	1 to: (index ) do: [:i | result1 add: (aCollectionOfElements at: i)].
	
	(index + 1) to: aCollectionOfElements size do: [:i | result2 add: (aCollectionOfElements at: i)].
	result add: (self newColumnWith:  result1 ); add: (self  newVerticalSeparator) ; add: (self newColumnWith:  result2 ). 
	^ result.