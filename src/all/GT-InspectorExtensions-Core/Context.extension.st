Extension { #name : #Context }

{ #category : #'*GT-InspectorExtensions-Core' }
Context >> gtInspectorSourceIn: composite [
	<gtInspectorPresentationOrder: 30> 
	(self method gtInspectorSourceIn: composite)
		doItReceiver: [ self receiver ];
		doItContext: [ self ];
		initialize: [ :aPresentation |
			self isDead ifFalse: [
				"Try to highlight the code that is currently being executed.
				This will not work for the top context of the process."
				aPresentation selectionInterval: (self debuggerMap 
					rangeForPC: self pc
					contextIsActiveContext: false)] ]
]

{ #category : #'*GT-InspectorExtensions-Core' }
Context >> gtInspectorTempNodes [

	^ (self tempNames withIndexCollect: [ :tempName :tempIndex |
			GTInspectorContextNamedTempNode hostObject: self tempName: tempName tempIndex: tempIndex ]) .
]

{ #category : #'*GT-InspectorExtensions-Core' }
Context >> gtInspectorVariableNodesIn: aCollection [
	"We override the variables with context specific ones"
	| tempVariableValueNodes |
	
	tempVariableValueNodes := self gtInspectorTempNodes sort: [:aNode :anotherNode | aNode key < anotherNode key ].
	aCollection addAll: tempVariableValueNodes.
	super gtInspectorVariableNodesIn: aCollection
]
