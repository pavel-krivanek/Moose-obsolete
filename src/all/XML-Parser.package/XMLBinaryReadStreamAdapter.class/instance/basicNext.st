private
basicNext
	stream atEnd
		ifTrue: [^ nil]
		ifFalse: [^ Character value: stream next]