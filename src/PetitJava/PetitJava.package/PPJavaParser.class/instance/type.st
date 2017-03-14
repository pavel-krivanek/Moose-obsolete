grammar-literals-string
type
	^ super type
		==> [ :nodes | 
			| pjtype |
			nodes second notEmpty
				ifTrue: [ pjtype := PJArrayTypeNode elementType: nodes first dimensions: nodes second size ]
				ifFalse: [ pjtype := nodes first ].
			pjtype ]