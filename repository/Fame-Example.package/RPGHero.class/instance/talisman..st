accessing
talisman: aTreasure
	talisman ~= aTreasure ifTrue: [ | old |
		old := talisman.
		talisman := aTreasure.
		old notNil ifTrue: [ old owner: nil ].
		aTreasure notNil ifTrue: [ aTreasure owner: self ]]