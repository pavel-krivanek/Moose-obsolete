enumerating
withAllInstvarResultsDo: aBlock
	self typeResults
		keysAndValuesDo:
			[:cl :instvarDict | 
			instvarDict
				keysAndValuesDo:
					[:ivar :typeResult | 
					aBlock
						value: cl
						value: ivar
						value: typeResult]]