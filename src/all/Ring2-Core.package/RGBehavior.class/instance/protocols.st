queries - protocols
protocols

	| methodTags |
	
	methodTags := self tagsForMethods.
	^	methodTags
		ifEmpty: [ 
			self methods 
				ifEmpty: [ OrderedCollection new ]
				ifNotEmpty: [  OrderedCollection with: self class asYetUnclassifiedProtocolName   ].
			]
		ifNotEmpty: [ methodTags  ]
