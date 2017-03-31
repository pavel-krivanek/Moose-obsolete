accessing - name
keyForName: name ifAbsent: exceptionBlock
	^ name isInteger
		ifTrue: [ name ]
		ifFalse: [ | idx |
			idx := names findFirst: [ :each | comparisonBlock value: name value: each ].
			idx isZero
				ifTrue: [ exceptionBlock value ].
			^ idx ]