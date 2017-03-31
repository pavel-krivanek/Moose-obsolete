private
findFameClass: aByteString 
	
	^metamodel elementNamed: aByteString ifAbsent: nil.