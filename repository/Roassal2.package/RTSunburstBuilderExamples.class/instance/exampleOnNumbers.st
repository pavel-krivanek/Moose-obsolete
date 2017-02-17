sources
exampleOnNumbers
	<gtExample>
	<iconSelectorBase64: #exampleOnNumbersIcon>
	
	| b|
	b := RTSunburstBuilder new.
	b
		color: [ :e | e < 5 
			ifTrue: [ Color gray ] 
			ifFalse: [Color blue] ].
	b 
		explore: 1 
		using: [ :n | n< 5 
			ifTrue: [ Array with: n + 1 with: n + 2 with: n+3 ] 
			ifFalse: [ #( ) ] ].
	^ b