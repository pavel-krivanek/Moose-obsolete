utilities
visitInteractionsFor: aVisitor and: anObject
	
	| first list temp |
	
	first := true.
	list := OrderedCollection new.
	temp := OrderedCollection new.
	(anObject announcer subscriptions trSubscriptions do: [ :sub | 
		((aVisitor validInteractions includes: sub subscriber class name) 
		and: [ (temp includes: sub subscriber class) not ]) ifTrue: [ 
			temp add: sub subscriber class.
			list add: sub ] ] ).
	aVisitor stream nextPutAll: '['.
	list do: [ :sub | 
		first ifTrue: [ first := false.
			sub subscriber accept: aVisitor with: anObject ]
		ifFalse: [ 
			aVisitor stream nextPutAll: ', '.
			sub subscriber accept: aVisitor with: anObject ]
		 ].
	aVisitor stream nextPutAll: ']'.	