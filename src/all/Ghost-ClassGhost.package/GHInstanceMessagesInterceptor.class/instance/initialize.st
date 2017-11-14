initialization
initialize
	super initialize.
	
	format := GHInstanceMessagesInterceptor format.
	methodDict := MethodDictionary new.
	methodDict at: #cannotInterpret: put: GHInstanceMessagesInterceptor >> #cannotInterpret: