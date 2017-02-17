private building
variableNodesFor: anObject
	| variableNodes |

	"nil objects do not have any variables"
	anObject ifNil: [ ^ #() ].

	variableNodes := OrderedCollection new: anObject class allSlots size.
	variableNodes add: (GTInspectorSelfNode hostObject: anObject).
	self basicVariableNodesFor: anObject in: variableNodes.
	^ variableNodes