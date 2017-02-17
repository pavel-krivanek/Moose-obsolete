enumerating
collect: aBlock
	"Evaluate aBlock with each of the values of the receiver as the  
	argument.  Collect the resulting values into a collection that is like 
	the receiver.  Answer the new collection."
	
	| newCollection newContents |
	newCollection := self species withSize: self size.
	newContents := contents
		collect: [:each | each key -> (aBlock value: each value)].
	newCollection initializeContents: newContents.
	^newCollection