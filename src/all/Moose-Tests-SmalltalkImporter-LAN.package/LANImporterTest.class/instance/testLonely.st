errors
testLonely
	| lonely |
	lonely := self model allModelClasses select: [ :each | each isLonelyWithin: self model allModelClasses ].
	self assert: lonely size equals: 6