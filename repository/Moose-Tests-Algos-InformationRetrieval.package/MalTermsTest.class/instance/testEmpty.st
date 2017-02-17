running
testEmpty
	terms := MalTerms new.
	self assert: terms size equals: 0.
	self assert: terms distinctSize equals: 0.
	terms do: [ :each | self assert: false ]