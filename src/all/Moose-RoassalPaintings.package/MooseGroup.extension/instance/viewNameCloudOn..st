*Moose-RoassalPaintings
viewNameCloudOn: view 
	| symbols objects |
	symbols := self symbolsUsedInName.
	objects := (symbols associations asSortedCollection: [:a : b | a value size > b value size]) asOrderedCollection.
	view shape label
		text: [:each | each key];
		height: [ :e | ((RTNFontLinearNormalizer inContext: objects withCommand: [:each | each value size])) rtValue: e ]
		"linearFontSize: [:each | each value size] within: objects"
"		textColor: (MONColorLinearNormalizer inContext: objects withCommand: [:each | each value size] 
											   lowColor: Color white lowThreshold: 0.1 
											   highColor: Color black highThreshold: 0.9)".
	view interaction popupText: [:each | each value size asString ].
	view nodes: objects.
	view flowLayout maxWidth: 600