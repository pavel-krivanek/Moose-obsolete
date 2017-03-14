accessing - computed
widestElement
	^ elements inject: elements anyOne into: [ :widestElement :e | 
			widestElement extent x < e extent x
				ifTrue: [ e ] ifFalse: [ widestElement ] ] 