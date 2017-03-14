tests
testAddingAndRemoving
	| nbOfInstancesOriginal newModel nbOfInstancesBefore nbOfInstancesAfter |
	self flag: 'This is a weird test as it fails sporadically'.
	10 timesRepeat: [ Smalltalk garbageCollect ].
	Object new.
	self assert: MooseModel root ~= nil.
	nbOfInstancesOriginal := MooseModel allInstances size.
	newModel := MooseModel new.
	newModel install.
	self assert: (MooseModel root includes: newModel).
	nbOfInstancesBefore := MooseModel allInstances size.
	self assert: nbOfInstancesBefore equals: nbOfInstancesOriginal + 1.
	newModel removeFromModel.
	newModel := nil.
	10 timesRepeat: [ Smalltalk garbageCollect ].
	Object new.
	nbOfInstancesAfter := MooseModel allInstances size.
	self assert: nbOfInstancesAfter equals: nbOfInstancesOriginal