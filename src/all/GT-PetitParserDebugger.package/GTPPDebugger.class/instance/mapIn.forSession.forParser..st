building presentations
mapIn: aComposite forSession: aSession forParser: parser
	((parser isKindOf: PPDelegateParser) 
		and: [parser name isNil not]) ifFalse: [ ^ self ].
	self class environment at: #GLMRoassalPresentation ifPresent: [ :cls |
		aComposite roassal
			title: 'Map';
			useExplicitNotNil;
			painting: [ :view |
				(self production: #start from: aSession rootParser class)
					viewAllNamedParsersWithSelection: (Array with: parser name)
					previewing: [:eachParser | self sourceCodeFrom: aSession rootParser class selector: eachParser name ]
					on: view ] ]	
