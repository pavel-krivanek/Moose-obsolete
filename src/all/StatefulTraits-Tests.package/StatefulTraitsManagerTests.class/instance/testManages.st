tests
testManages

	| manager |
	
	manager := StatefulTraitsManager new.
	self deny: (manager manages: self testingClass).
	manager manage: self testingClass.
	self assert: (manager manages: self testingClass).
