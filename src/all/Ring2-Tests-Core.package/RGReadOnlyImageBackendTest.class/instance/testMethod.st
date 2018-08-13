tests
testMethod

	| env method |
	
	env := RGEnvironment new.
	env backend: (RGReadOnlyImageBackend for: env).
	
	method := (Point>>#x) asRingMinimalDefinitionIn: env.
	
	method author notEmpty.
	method time > DateAndTime new.
	method time <= DateAndTime now.
	
	self assert: method selector equals: #x.
	self assert: (method package isRGObject and: [method package isPackage]).
	self assert: method package name equals: 'Kernel'.
	self assert: (method package == method parent package).
	self assert: method sourceCode equals: (Point>>#x) sourceCode.	
	self assert: method ast equals: (Point>>#x) ast.
		