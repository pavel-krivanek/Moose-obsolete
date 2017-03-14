printing/formatting
textAttributesForStackEntry: aContext
	| ctxt |
	(self session receiverContext  == aContext )
		ifTrue: [ ^ {TextEmphasis bold} ].

	(self session senderContext == aContext) 
		ifTrue: [ ^ {TextEmphasis bold} ].
	
	ctxt := aContext findContextSuchThat: [ :aSenderContext |
		(aSenderContext == self session receiverContext) or: [  aSenderContext == self session senderContext ]  ].
	ctxt == self session receiverContext ifTrue: [  ^ {TextColor black} ].
	ctxt == self session senderContext ifTrue: [  ^ {TextColor gray} ].
		
	^ {TextColor black}