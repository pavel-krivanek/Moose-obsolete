tests
testManage

	| manager |
	
	manager := StatefulTraitsManager new.
	manager manage: self testingClass.
	self assert: manager mergedClasses size equals: 1.
	manager manage: self testingClass.
	self assert: manager mergedClasses size equals: 1.	