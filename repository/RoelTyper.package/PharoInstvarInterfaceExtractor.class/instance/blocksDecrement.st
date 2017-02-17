as yet unclassified
blocksDecrement

		blocksLimits := blocksLimits select: [:e | (e = input pc) ifTrue: [self removeBlockMapping.  false] ifFalse: [true] ]
	