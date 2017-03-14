examples
basic1
	<gtExample>
	
	"
	self new basic1
	"
	| b|
	b := RTSunburstBuilder new.
	b explore: 1 using: [ :n | 
		n< 4 
			ifTrue: [ Array with: n + 1 with: n + 2 ] 
			ifFalse: [ #( ) ] ].
	^ b