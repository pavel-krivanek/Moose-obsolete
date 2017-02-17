private
expectedFailures
	| pragmas |
	pragmas := Pragma allNamed: #expectedFailure from: self class to: Object.
	^ pragmas collect: [:each | each method selector  ].