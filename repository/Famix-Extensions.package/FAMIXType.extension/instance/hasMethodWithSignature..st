*Famix-Extensions
hasMethodWithSignature: aStringOrSymbol
	| symbol |
	symbol := aStringOrSymbol asSymbol.
	^self methods anySatisfy: [:each | each signature asSymbol = symbol]