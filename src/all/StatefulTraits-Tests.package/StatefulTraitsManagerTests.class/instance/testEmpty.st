tests
testEmpty

	| manager |
	
	manager := StatefulTraitsManager new.
	self assert: manager mergedClasses isEmpty.