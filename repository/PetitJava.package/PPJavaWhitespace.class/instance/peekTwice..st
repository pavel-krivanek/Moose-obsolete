private
peekTwice: context
	| array |
	context atEnd 
		ifTrue: [^Array with: nil with: nil].
	array := Array with: (context next) with: (context peek).
	context position: context position - 1.
	^array