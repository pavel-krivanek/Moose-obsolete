building
onMethodsFromClasses
	browser transmit to: #methods; from: #classes; andShow: [ :a | 
		a list
				title: 'Methods';
				display: [ :class | class methods ];
				format: #name;
				dynamicActionsOnSelection: [ :list | list selection mooseFinderActions ];
				tags: [ :each | 
					(OrderedCollection 
						with: (each hasClassScope ifTrue: [self metaString] ifFalse: [self instanceString])) 
							addAll: each modifiers; yourself ]
		 ]