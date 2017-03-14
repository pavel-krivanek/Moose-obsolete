accessing
completeText
	self fileReference exists ifFalse: [ ^ '' ].
	^ self fileReference readStreamDo: [ :s |
		[ s contents ]
				on: Error
				do: [ [ s converter: Latin1TextConverter new; contents ]
						on: Error
						do: [ '' ] ] ]