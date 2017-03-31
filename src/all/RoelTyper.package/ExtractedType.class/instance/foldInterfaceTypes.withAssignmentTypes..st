private
foldInterfaceTypes: interfaceClasses withAssignmentTypes: assignmentClasses
| tmp | 
	"	^interfaceClasses asOrderedCollection"

	"Only interface types"

	"	^assignmentClasses "

	"Only assignment types"
	assignmentClasses remove: UndefinedObject ifAbsent: [].
	tmp:=interfaceClasses.
	(assignmentClasses size=0 and: [
		((interface includes: #value) 
		or: [interface includes: #value:]) and: [interfaceClasses includes: BlockContext]]) 
			ifTrue: [tmp:=OrderedCollection with: BlockContext]
			ifFalse: [tmp:=interfaceClasses].
	^self class mergerClass
		interfaceTypes: tmp
		assignmentTypes: assignmentClasses