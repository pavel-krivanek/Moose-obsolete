*XML-Tests-Parser
nextXMLBNFCharFrom: aStream
	(aStream peek == $"
		or: [aStream peek == $'])
		ifTrue: [^ (aStream upTo: aStream next) first].
	(aStream peekFor: $#)
		ifTrue: [
			^ (XMLIntegerReader
				readFrom: aStream
				withBase: 16
				andPrefixes: 'xX'
				orBase: 10) asCharacter].
	(aStream peekFor: $|)
		ifTrue: [^ nil].
	^ aStream next.