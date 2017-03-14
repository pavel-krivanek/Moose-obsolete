public interface
entityType
	
	| types |
	self isEmpty ifTrue: [^#EmptyHistoryGroup].
	types := (self entities collect: [:each | each entityType]) asSet asOrderedCollection.
	^types size = 1
		ifTrue: [(types first asString , 'Group') asSymbol]
		ifFalse: [#HeterogeneousHistoryGroup]