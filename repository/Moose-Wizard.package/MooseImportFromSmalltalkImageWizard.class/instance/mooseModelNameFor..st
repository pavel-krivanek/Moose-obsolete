private - utilities
mooseModelNameFor: aCollectionOfPackageNames 
	"return the name that will be give to the moose model"
	| stream |
	stream := WriteStream on: ''.
	stream nextPutAll: 'Moose model for '.
	aCollectionOfPackageNames do: 
		[ :each | 
		(aCollectionOfPackageNames indexOf: each) = aCollectionOfPackageNames size 
			ifTrue: [ stream nextPutAll: each ]
			ifFalse: 
				[ stream
					nextPutAll: each;
					nextPutAll: ' - ' ] ].
	^ stream contents