algorithm
commonAttributesOf: objectMask
	
	| mask |
	mask := attributesMask.
	objectMask
		bitMaskDo:
			[:index | mask := mask bitAnd: (context objects at: index) bits].
	^mask