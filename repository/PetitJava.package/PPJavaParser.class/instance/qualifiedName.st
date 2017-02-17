accessing
qualifiedName
	^ super qualifiedName
		==> [ :nodes | 
			nodes second notEmpty
				ifTrue: [ self nameFromQualified: (Array with: nodes first withAll: (nodes second collect: [ :e | e second value ])) ]
				ifFalse: [ PJSimpleNameNode identifier: nodes first value ] ]