tests
testGroupType
	| group numberOfClasses numberOfMethods |
	numberOfClasses := self model allClasses size.
	numberOfMethods := self model allMethods size.
	group := MooseGroup withAll: self model allClasses entities.
	self assert: (group isMemberOf: FAMIXClassGroup).
	group addAll: self model allMethods.
	self assert: (group isMemberOf: MooseGroup).
	group removeAll: self model allMethods.
	self assert: (group isMemberOf: FAMIXClassGroup).
	group add: self model allMethods first.
	self assert: (group isMemberOf: MooseGroup).
	group remove: self model allMethods first.
	self assert: (group isMemberOf: FAMIXClassGroup).
	group := MooseGroup withAll: self model allMethods entities.
	self assert: (group isMemberOf: FAMIXMethodGroup).
	self assert: self model allClasses size equals: numberOfClasses.
	self assert: self model allMethods size equals: numberOfMethods