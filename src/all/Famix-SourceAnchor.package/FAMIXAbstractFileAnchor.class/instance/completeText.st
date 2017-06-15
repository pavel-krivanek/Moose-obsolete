accessing
completeText
	| fileReference |
	(fileReference := self fileReference) exists
		ifFalse: [ ^ '' ].
	^ fileReference
		readStreamDo: [ :s | 
			[ s contents ]
				on: Error
				do: [ [ s
						converter: Latin1TextConverter new;
						contents ]
						on: Error
						do: [ '' ] ] ]