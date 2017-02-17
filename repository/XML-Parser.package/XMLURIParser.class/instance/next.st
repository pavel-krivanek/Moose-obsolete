private
next
	self atEnd
		ifTrue: [^ nil]
		ifFalse: [^ readStream next]