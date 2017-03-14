printing/formatting
printStackClassColumnForContext: aContext

	^ (self session isPPParser: aContext receiver)
		ifTrue: [ 
			String streamContents: [:stream | 
				
				stream nextPutAll: aContext receiver class name.
				aContext methodClass == aContext receiver class 
					ifFalse: [
						stream nextPut: $(.
						stream nextPutAll: aContext methodClass name.
						stream nextPut: $) ].
				stream nextPut: $(.
				aContext receiver printNameOn: stream.
				stream nextPut: $).
				"stream nextPutAll: '>>'.
				
				str := super printStackClassColumnForContext: aContext.
				str := str allButFirst: (str indexOf: $> ifAbsent: [ -1 ]) + 1.
				stream nextPutAll: str" ]  ]
		ifFalse: [ super printStackClassColumnForContext: aContext ]
	