accessing - computed
biggestElement
	^ elements inject: elements anyOne into: [ :biggestElement :e | 
			biggestElement extent < e extent
				ifTrue: [ e ] ifFalse: [ biggestElement ] ] 