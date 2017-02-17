testing
tryChainWith: otherDuplication withLineBias: maxLineBias forDetector: aDudeDetector
	| otherDup yBias otherRefCode otherDupCode xBias newDuplication newRefCode newDupCode newSignature separator |
	separator := '.'.
	otherDup := otherDuplication.
	(self referenceCode entity = otherDuplication referenceCode entity
		and: [ self duplicateCode entity = otherDuplication duplicateCode entity ])
		ifTrue: [  ]
		ifFalse: [ 
			(self referenceCode entity = otherDuplication duplicateCode entity
				and: [ self duplicateCode entity = otherDuplication referenceCode entity ])
				ifTrue: [ otherDup := otherDuplication makeInvert ]
				ifFalse: [ ^ nil ] ].
	otherRefCode := otherDup referenceCode.
	otherDupCode := otherDup duplicateCode.
	xBias := otherRefCode beginLine - self referenceCode endLine - 1.
	yBias := otherDupCode beginLine - self duplicateCode endLine - 1.
	((xBias <= maxLineBias and: [ yBias <= maxLineBias ]) and: [ xBias >= 0 and: [ yBias >= 0 ] ])
		ifTrue: [ 
			| auxSig |
			newRefCode := DudeSourceCodeFragment new
				entity: self referenceCode entity
				beginLine: self referenceCode beginLine
				endLine: otherRefCode endLine
				fragmentLength: (aDudeDetector findNumberOfNonCleanedLinesBetween: self referenceCode beginLine and: otherRefCode endLine forEntity: self referenceCode entity).
			self referenceCode entity mooseModel add: newRefCode.
			newDupCode := DudeSourceCodeFragment new
				entity: self duplicateCode entity
				beginLine: self duplicateCode beginLine
				endLine: otherDupCode endLine
				fragmentLength: (aDudeDetector findNumberOfNonCleanedLinesBetween: self duplicateCode beginLine and: otherDupCode endLine forEntity: self duplicateCode entity).
			self duplicateCode entity mooseModel add: newDupCode.
			xBias = yBias
				ifTrue: [ auxSig := 'M' , xBias printString ]
				ifFalse: [ 
					(xBias min: yBias) = xBias
						ifTrue: [ 
							auxSig := 'I' , (yBias - xBias) printString.
							xBias > 0
								ifTrue: [ auxSig := auxSig , separator , 'M' , xBias printString ] ]
						ifFalse: [ 
							auxSig := 'D' , (xBias - yBias) printString.
							yBias > 0
								ifTrue: [ auxSig := auxSig , separator , 'M' , yBias printString ] ] ].
			newSignature := self signature , separator , auxSig , separator , otherDup signature.
			newDuplication := DudeDuplication new refCode: newRefCode dupCode: newDupCode signature: newSignature.
			newDuplication
				headDiagonal: self headDiagonal;
				tailDiagonal: otherDuplication tailDiagonal ].
	^ newDuplication