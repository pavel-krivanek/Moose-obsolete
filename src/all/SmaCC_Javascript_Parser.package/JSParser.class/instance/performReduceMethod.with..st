private
performReduceMethod: aSymbol with: items
	^ (states size > 1
		and: [ items isEmpty
				and: [ (aSymbol beginsWith: 'reduceActionForStartTemplateLiteral') or: [ aSymbol beginsWith: 'reduceActionForCheckEOL' ] ] ])
		ifTrue: [ self perform: aSymbol with: items ]
		ifFalse: [ super performReduceMethod: aSymbol with: items ]