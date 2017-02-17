private
syntaxError: aString
	FMUtil default signal: (FMSyntaxError new parser: self; messageText: aString). 

	" Evaluate the following line to get text around the error:
		(stream contents copyFrom: self pos -10 to: self pos + 10) inspect.
	"
	
	^nil.