running
testRemoveHapaxes
	terms := MalTerms sample.
	self assert: terms distinctSize equals: 56.
	terms removeHapaxes.
	self assert: terms distinctSize equals: 12.
	^ terms