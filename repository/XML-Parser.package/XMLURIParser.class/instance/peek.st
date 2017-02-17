private
peek
	self atEnd
		ifTrue: [^ nil]
		ifFalse: [^ readStream peek]