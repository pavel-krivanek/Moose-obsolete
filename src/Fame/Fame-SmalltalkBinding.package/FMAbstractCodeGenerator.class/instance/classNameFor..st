compiling-names
classNameFor: fameClass 
	^fameClass isBuiltIn 
		ifTrue: [ fameClass name ]
		ifFalse: [ (self classNamePrefix , fameClass package name , fameClass name) asSymbol ]