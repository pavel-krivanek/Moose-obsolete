reusable
viewNamespaceMapOf: aBlock fromModel: model namespace: namespace class:class method:method on: view
	| source invokedNamespaces allInvokedNamespaces layoutEdges |
	source := method ifNil: [ class  ].
	invokedNamespaces := source notNil ifTrue: [ aBlock value: source ] ifFalse: [ #() ].
	allInvokedNamespaces := namespace notNil ifTrue: [ aBlock value: namespace  ] ifFalse: [ #() ].
	view shape rectangle
		height: #numberOfClasses; width: 7; 
		borderColor: Color lightGray; fillColor: [:each | 
		each = namespace 
			ifTrue: [Color blue]
			ifFalse: [(invokedNamespaces includes: each ) 
				ifTrue: [Color red] ifFalse: [(allInvokedNamespaces includes: each ) 
					ifTrue: [Color lightRed] ifFalse: [Color white] ]] ].
	view nodes: model allNamespaces.
	view shape orthoVerticalLine color: Color veryLightGray.
	layoutEdges := view edgesFrom: #belongsTo.
	view treeLayout horizontalGap: 1; userDefinedEdges: layoutEdges.
"				source ~= namespace ifTrue: [
					view shape splineLine color: Color red.
					view edges: {namespace} from: #yourself toAll: invokedNamespaces ]
"				