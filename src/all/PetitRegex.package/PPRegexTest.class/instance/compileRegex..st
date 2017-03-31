utilties
compileRegex: aString
	"Compile the regex and answer the matcher, or answer nil if compilation fails."

	^ [ self matcherClass for: (self parserClass parse: aString onError: [ ^ nil ]) ]
		on: Error do: [ :err | ^ nil ]