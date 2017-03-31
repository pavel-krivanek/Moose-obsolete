accessing
opposite: new
	
	opposite ~~ new ifTrue: [
		| old |
		old := opposite.
		opposite := new.
		old notNil ifTrue: [ old opposite: nil ].
		new notNil ifTrue: [ new opposite: self ]]