enumerating
computeCyclomaticNumber: sel
	"The following equations defined McCabe Cyclomatic Complexity:

	     1.The number of regions in a flow graph. 
     		2.V(G) = E - N + 2, where E are the edges and N are the nodes. 
     		3.V(G) = P + 1, where P are the predicate nodes. 

	The score is basically the number of decision points in a routine + 1. Decision points 
	are taken to be	conditionals and loops."
	
	| branches loops |
	branches := #(#ifTrue: #ifFalse: #ifTrue:ifFalse: #ifFalse:ifTrue: #ifNil: #ifNil:ifNotNil: #ifNotNil:ifNil: #ifNotNil: #at:ifAbsent: #at:ifAbsentPut: #detect:ifNone: #on:do: #and: #or: #xor:).
	loops := #(#whileTrue: #whileTrue #whileFalse #whileFalse: #timesRepeat: #to:do: #do:separatedBy: #do: #collect: #select: #reject: #inject:into: #detect: #detect:ifNone: #anySatisfy: #allSatisfy: #piecesCutWhere:).	"-- please not that #detect:ifNone: is listed twice because it is both loop and branch!!! -- akuhn"
	(branches includes: sel)
		ifTrue: [cyclomaticNumber2 := cyclomaticNumber2 + 1].
	(loops includes: sel) ifTrue: [cyclomaticNumber2 := cyclomaticNumber2 + 1].	"-- HERE STARTS THE OLD ERRORFUL IMPL --"
	(#(#or: #and: #xor: #& #|) includes: sel)
		ifTrue:
			[booleanOperators := booleanOperators + 1.
			^self].
	(#(#ifTrue: #ifFalse: #ifTrue:ifFalse: #ifFalse:ifTrue: #whileTrue #whileTrue: #whileFalse #whileFalse:)
		includes: sel)
		ifTrue:
			[| cyclo |
			cyclo := self cyclomaticNumber + 1 + booleanOperators.
			self cyclomaticNumber: cyclo.
			booleanOperators := 0].
	(#(#to:do: #timesRepeat:) includes: sel)
		ifTrue: [self cyclomaticNumber: self cyclomaticNumber + 1]