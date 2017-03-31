private 
referencePrefix
	^ self isParameter
		ifTrue: [$%]
		ifFalse: [$&]