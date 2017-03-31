private
writePrologue
	self writer
		formatBeforeEntityReference: self;
		nextPut:
			(self isParameter
				ifTrue: [$%]
				ifFalse: [$&])