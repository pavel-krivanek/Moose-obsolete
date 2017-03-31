testing
testSubclassHierarchyDepth
	"
	self debug: #testSubclassHierarchyDepth
	"

	| classes modelClass protoObjectClass |
	classes := self model allClasses.
	modelClass := (classes select: [ :v | v name = #Model ]) first.
	self assert: modelClass subclassHierarchyDepth equals: 3.
	protoObjectClass := (classes select: [ :v | v name = #LANNode ]) first.
	self assert: protoObjectClass subclassHierarchyDepth equals: 2