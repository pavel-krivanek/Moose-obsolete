accessing-derived
signature
	"lazy evaluation (recursive) of signatures for nodes"
	| aSignature |
	self propertyNamed: #signature 
			ifNil: [ aSignature := self method printString.
					self children do: [:each | aSignature := aSignature, each signature ].
				  self signature: aSignature.
			].
	^self propertyNamed: #signature