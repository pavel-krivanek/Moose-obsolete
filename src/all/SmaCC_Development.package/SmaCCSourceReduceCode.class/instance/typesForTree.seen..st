private
typesForTree: aRBProgramNode seen: aSet
	aRBProgramNode isReturn
		ifTrue: [ ^ self typesForTree: aRBProgramNode value seen: aSet ].
	(aRBProgramNode isSequence and: [ aRBProgramNode statements notEmpty ])
		ifTrue: [ | types |
			types := Set withAll: (self typesForTree: aRBProgramNode statements last seen: aSet).
			aRBProgramNode
				nodesDo: [ :each | 
					each isReturn
						ifTrue: [ types addAll: (self typesForTree: each value seen: aSet) ] ].
			^ types asArray ].
	(aRBProgramNode isLiteralNode or: [ aRBProgramNode isVariable ])
		ifTrue: [ (self returnedNodeIndexFor: aRBProgramNode)
				ifNil: [ aRBProgramNode isLiteralNode
						ifTrue: [ ^ Array with: (self model classFor: aRBProgramNode value class) ] ]
				ifNotNil: [ :index | ^ self basicModelTypes: aSet forIndex: index ] ].
	(aRBProgramNode isMessage and: [ aRBProgramNode receiver isVariable and: [ aRBProgramNode receiver name = 'SmaCCToken' ] ])
		ifTrue: [ ^ Array with: (self model classFor: SmaCCToken) ].
	^ Array with: (self model classFor: Object)