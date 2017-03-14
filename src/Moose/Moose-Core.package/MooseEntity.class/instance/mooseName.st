printing
mooseName
	"The return value must not be nil, and must never change.
	The implementation should be fast, as this key may be used
	extensively by MooseGroup or similar facilities.
	
	Do not override this method.
	Instead, use mooseNameOn: to customize the result."
	self privateState hasMooseModel ifFalse: [ "do not cache yet"
			| stream |
			stream := (String new: 64) writeStream.
			self mooseNameOn: stream.
			^stream contents asSymbol ].
	^self privateState 
		propertyAt: #mooseName
		ifAbsentPut: [ 
			| stream |
			stream := (String new: 64) writeStream.
			self mooseNameOn: stream.
			stream contents asSymbol ]