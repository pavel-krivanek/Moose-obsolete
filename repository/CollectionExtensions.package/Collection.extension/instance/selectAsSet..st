*CollectionExtensions
selectAsSet: aBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument. 
	Collect into a new set, only those elements for which
	aBlock evaluates to true.  Answer the new collection."

	| newSet |
	newSet := Set new.
	self do: [:each | (aBlock value: each) ifTrue: [newSet add: each]].
	^newSet