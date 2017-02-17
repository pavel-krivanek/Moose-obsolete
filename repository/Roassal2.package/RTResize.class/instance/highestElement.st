accessing - computed
highestElement
	^ elements inject: elements anyOne into: [ :highestElement :e | 
			highestElement extent y < e extent y
				ifTrue: [ e ] ifFalse: [ highestElement ] ] 