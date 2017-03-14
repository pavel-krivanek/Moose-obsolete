tests
testParseSimple
	|res p1 |
	res := OrderedCollection new.
	res
		add: (Array with: #absolute with: #() );
		add: (Array with: #moveTo: with: (Array with: 100.0@100.0) );
		add: (Array with: #absolute with: #() );
		add: (Array with: #lineTo: with: (Array with: 300.0@100.0) );
		add: (Array with: #absolute with: #() );
		add: (Array with: #lineTo: with: (Array with: 200.0@300.0) );
		add: (Array with: #close with: #()).
	p1 := (TRSVGPath new path: 'M 100 100 L 300 100 L 200 300 z') curves.
	self assert: p1 = res.
	
	"
	According to the specification: 
	
	The command letter can be eliminated on subsequent commands if the same command is used multiple times in a row (e.g., you can drop the second 'L' in 'M 100 200 L 200 100 L 	-100 -200' and use 'M 100 200 L 200 100 -100 -200' instead).
		
	Hence, the following assertion should be true:
	
	p2 := (RTSVGPath new path: 'M 100 100 L 300 100 200 300 z') processPath asString.
	self assert: p2 = res."