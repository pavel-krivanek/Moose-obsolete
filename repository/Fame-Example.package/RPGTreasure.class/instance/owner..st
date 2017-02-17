accessing
owner: aHero
	owner ~= aHero ifTrue: [ | old |
		old := owner.
		owner := aHero.
		old notNil ifTrue: [ old talisman: nil ].
		aHero notNil ifTrue: [ aHero talisman: self ]]