copying
copyWithHost: aString
	| copy |

	copy := self copy.
	(aString size > 0
		and: [aString first == $[
			and: [aString last == $]]])
		ifTrue: [copy rawHost: aString]
		ifFalse: [copy rawHost: (self percentEncode: aString)].
	^ copy.