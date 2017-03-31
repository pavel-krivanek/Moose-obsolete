accessing
previous: anAssociation 
	previous ~= anAssociation ifTrue: 
		[ | old |
		old := previous.
		previous := anAssociation.
		old notNil ifTrue: [ old next: nil ].
		anAssociation notNil ifTrue: [ anAssociation next: self ] ]