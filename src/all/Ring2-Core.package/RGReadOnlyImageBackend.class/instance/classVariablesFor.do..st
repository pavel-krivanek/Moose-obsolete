class
classVariablesFor: anRGBehavior do: aBlock

	| realClass |
	realClass := self realBehaviorFor: anRGBehavior.
	realClass classVariables do: [ :classVariable | 
		| def |
		def := RGClassVariable named: classVariable key parent: anRGBehavior.
		aBlock value: def. ]