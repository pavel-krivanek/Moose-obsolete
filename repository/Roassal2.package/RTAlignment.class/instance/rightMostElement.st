accessing - computed
rightMostElement
	fixedElement ifNotNil: [ ^ fixedElement ].
	^ elements inject: elements first into: [ :maxS :s | 
			maxS encompassingRectangle right <= s encompassingRectangle right
					ifTrue: [ s ] ifFalse: [ maxS ] ] 