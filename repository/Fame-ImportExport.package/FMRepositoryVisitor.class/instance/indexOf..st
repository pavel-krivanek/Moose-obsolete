private
indexOf: each
	each isNil ifTrue: [ self error ].
	^index at: each ifAbsentPut: [ index size + 1 ]