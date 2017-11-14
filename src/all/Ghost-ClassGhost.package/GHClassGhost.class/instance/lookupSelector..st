simulation trick
lookupSelector: selector
	"this method is overriden to allow debugging method calls to objects which classes was proxified by me"
	
	^GHInstanceMessagesInterceptor prepareCannotInterpretMethodFor: selector  