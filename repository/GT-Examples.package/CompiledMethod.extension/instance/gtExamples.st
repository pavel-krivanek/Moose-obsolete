*GT-Examples-Core
gtExamples
	^ self gtExample 
		ifNotNil: [ :example | { example } ]
		ifNil: [ {  } ]