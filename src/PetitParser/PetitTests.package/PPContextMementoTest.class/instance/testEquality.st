tests
testEquality
	| m1 m2  |
	m1 := self memento.
	m2 := self memento.
	
	self assert: m1 = m2.
	
	m1 propertyAt: #foo put: #bar.
	self assert: (m1 = m2) not.
	
	m2 propertyAt: #foo put: #bar.
	self assert: m1 = m2.
