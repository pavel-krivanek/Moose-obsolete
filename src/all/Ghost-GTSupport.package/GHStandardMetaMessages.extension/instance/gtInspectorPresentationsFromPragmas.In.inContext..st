*Ghost-GTSupport
gtInspectorPresentationsFromPragmas: aCollection In: composite inContext: aGTInspector

	aCollection
		do: [ :eachPragma | 
			eachPragma methodSelector numArgs = 0
				ifTrue: [ 
					| configurationProvider |
					configurationProvider := self perform: eachPragma methodSelector.
					configurationProvider glmPresentation cull: composite cull: aGTInspector cull: self ].
			eachPragma methodSelector numArgs = 1
				ifTrue: [ 
					thisContext 
						object: self 
						perform: eachPragma methodSelector 
						withArguments: { composite } 
						inClass: self metaMessagesClass ].
			eachPragma methodSelector numArgs = 2
				ifTrue: [ 
					thisContext 
						object: self 
						perform: eachPragma methodSelector 
						withArguments: { composite . aGTInspector } 
						inClass: self metaMessagesClass ] ]