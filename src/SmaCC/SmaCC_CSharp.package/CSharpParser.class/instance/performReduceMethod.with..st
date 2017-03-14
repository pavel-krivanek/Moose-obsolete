private
performReduceMethod: aSymbol with: items
	^ (states size > 1 and: [ items isEmpty and: [ aSymbol beginsWith: 'reduceActionForStartInterpolated' ] ])
		ifTrue: [ self perform: aSymbol with: items ]
		ifFalse: [ super performReduceMethod: aSymbol with: items ]