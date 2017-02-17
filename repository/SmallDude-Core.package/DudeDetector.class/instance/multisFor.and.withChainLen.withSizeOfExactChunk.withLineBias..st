engine-private
multisFor: rowEntity and: colEntity withChainLen: minSizeDupChain withSizeOfExactChunk: minSizeExactChunk withLineBias: maxLineBias
	| exacts |
	(self codeBase at: rowEntity) ifEmpty: [ ^ nil ].
	(self codeBase at: colEntity) ifEmpty: [ ^ nil ].
	exacts := self exactDupFor: rowEntity and: colEntity withLength: minSizeExactChunk.
	[ exacts notEmpty ]
		whileTrue: [ 
			| chunk freshChain index |
			chunk := exacts removeLast.
			index := exacts size.
			[ index >= 1 ]
				whileTrue: [ 
					| e crtDiag |
					e := exacts at: index.
					freshChain := chunk tryChainWith: e withLineBias: maxLineBias forDetector: self.
					freshChain isNil
						ifTrue: [ freshChain := e tryChainWith: chunk withLineBias: maxLineBias forDetector: self ].
					freshChain notNil
						ifTrue: [ 
							chunk := freshChain.
							exacts removeAtIndex: index.
							index := exacts size + 1 ].
					crtDiag := chunk headDiagonal min: chunk tailDiagonal.
					crtDiag - e tailDiagonal > maxLineBias
						ifTrue: [ index := 1 ].
					index := index - 1 ].
			chunk realLength >= minSizeDupChain
				ifTrue: [ self recordDuplication: chunk ] ]