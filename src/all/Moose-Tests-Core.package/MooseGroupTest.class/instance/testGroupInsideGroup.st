tests
testGroupInsideGroup
	| group1 classes methods group2 group3 numberOfClasses |
	classes := self model allClasses copy.
	numberOfClasses := classes size.
	group1 := MooseGroup withAll: classes.
	methods := self model allMethods.
	group2 := MooseGroup withAll: methods.
	group3 := MooseGroup withAll: (OrderedCollection with: group1 with: group2).
	self assert: (group3 select: [ :each | each mooseID = group2 mooseID ]) isEmpty not.
	self assert: (self model allClasses isMemberOf: FAMIXClassGroup).
	self assert: self model allClasses size equals: numberOfClasses