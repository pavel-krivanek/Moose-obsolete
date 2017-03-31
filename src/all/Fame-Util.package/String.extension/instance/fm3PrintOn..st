*fame-util
fm3PrintOn: stream
	stream nextPut: $'.
	self do: [ :char |
		$' == char ifTrue: [ 
			stream nextPut: char ].
		stream nextPut: char ].
	stream nextPut: $'.