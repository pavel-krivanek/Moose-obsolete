removing
removeAttribute: aName ifAbsent: aBlock
	| i |

	(i := self indexOfAttribute: aName) > 0
		ifTrue: [^ (self removeAt: i) value]
		ifFalse: [^ aBlock value].