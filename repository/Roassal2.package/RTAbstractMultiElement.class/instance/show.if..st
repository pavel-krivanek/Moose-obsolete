updating
show: anElement if: aConditionBlock
	(anElement view isNil and: aConditionBlock)
		ifTrue: [ ownedElements add: anElement.
			self view add: anElement ].
	(anElement view isNotNil and: [ aConditionBlock value not ])
		ifTrue: [ ownedElements remove: anElement.
			anElement remove ]