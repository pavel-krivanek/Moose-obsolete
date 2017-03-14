algorithm
commonObjectsOf: attributeMask
	
	| mask |
	mask := objectsMask.
	attributeMask
		bitMaskDo:
			[:index | mask := mask bitAnd: (context attributes at: index) bits].
	^mask