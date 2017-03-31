testing
appliesToDebugger: aDebugger
	"Only a context bellow the receiver context can be selected as the sender"
	
	^ (aDebugger selectedStackContext findContextSuchThat: [ :aSenderContext |
		(aSenderContext == aDebugger session receiverContext) ]) isNil