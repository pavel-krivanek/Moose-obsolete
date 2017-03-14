building
onInstVarsFromClasses
	browser transmit to: #instVars; from: #classes; andShow: [ :a | 
		a list
				title: 'Attributes';
				display: [ :class | class attributes ];
				format: [:attribute | attribute name ];
				dynamicActionsOnSelection: [ :list | list selection mooseFinderActions ];
				tags: [ :each | 
					(OrderedCollection 
						with: (each hasClassScope ifTrue: [self metaString] ifFalse: [self instanceString])) 
							addAll: each modifiers; yourself ] ]