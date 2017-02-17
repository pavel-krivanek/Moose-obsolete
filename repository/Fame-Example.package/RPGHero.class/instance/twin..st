accessing
twin: aHero
	twin ~= aHero ifTrue: [ | old |
		old := twin.
		twin := aHero.
		old notNil ifTrue: [ old twin: nil ].
		aHero notNil ifTrue: [ aHero twin: self ]]