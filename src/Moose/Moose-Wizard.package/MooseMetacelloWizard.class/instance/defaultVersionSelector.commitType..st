private
defaultVersionSelector: aVersionNumberString commitType: aSymbol
	"Inspired by Metacello default selector template"
	| selectorPrefix |
	aSymbol = #branchDev
		ifTrue: [ selectorPrefix := 'branch' ]
		ifFalse: [ selectorPrefix := 'version' ].
	^ String streamContents: [:str|
			str nextPutAll: selectorPrefix;
				nextPutAll: ((aVersionNumberString copyWithout: $.) copyWithout: $-);
				nextPut: $: ]