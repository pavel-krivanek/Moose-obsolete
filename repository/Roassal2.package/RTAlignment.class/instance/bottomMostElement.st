accessing - computed
bottomMostElement
	fixedElement ifNotNil: [ ^ fixedElement ].
	^ elements inject: elements first into: [ :maxS :s | 
			maxS encompassingRectangle top <= s encompassingRectangle top
					ifTrue: [ s ] ifFalse: [ maxS ] ] 