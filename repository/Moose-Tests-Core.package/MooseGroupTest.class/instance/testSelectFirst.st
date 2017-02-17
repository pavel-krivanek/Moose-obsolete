tests
testSelectFirst
	| group |
	group := self model allClasses.
	self assert: (group selectFirst: 10) size equals: 10.
	self assert: (group selectFirst: 5) size equals: 5.