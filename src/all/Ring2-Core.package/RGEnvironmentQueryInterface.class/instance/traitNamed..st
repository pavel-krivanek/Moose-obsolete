as yet unclassified
traitNamed: traitName
	"Retrieves an RGTrait object. The traitName could be theMetaClass name"
	| trait |
	
	^(trait:= self classOrTraitNamed: traitName) isTrait
		ifTrue:[ trait ]
		ifFalse:[ nil ]