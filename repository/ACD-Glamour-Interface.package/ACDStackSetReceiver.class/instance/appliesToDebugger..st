testing
appliesToDebugger: aDebugger
	"Only a context above the sender context can be selected as the receiver"
	
	^ (aDebugger selectedStackContext findContextSuchThat: [ :aContext |
		(aContext == aDebugger session senderContext) ]) isNil