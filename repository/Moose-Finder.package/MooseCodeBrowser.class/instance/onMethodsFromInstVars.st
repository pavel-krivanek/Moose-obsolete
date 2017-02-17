building
onMethodsFromInstVars
	browser transmit to: #methods; from: #instVars; andShow: [ :a | 
		a list
				title: 'Methods';
				display: [ :var | var accessingMethods ];
				format: #name;
				dynamicActionsOnSelection: [ :list | list selection mooseFinderActions ];
				tags: [ :each | 
					(OrderedCollection 
						with: (each hasClassScope ifTrue: [self metaString] ifFalse: [self instanceString])) 
							addAll: each modifiers; yourself ] ]