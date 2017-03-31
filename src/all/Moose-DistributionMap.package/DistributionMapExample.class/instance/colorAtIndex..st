accessing
colorAtIndex: anInteger

	^ (anInteger <= Color distinctTenStrongColors size)
		ifTrue: [ Color distinctTenStrongColors at: anInteger ]
		ifFalse: [ Color gray ]
		