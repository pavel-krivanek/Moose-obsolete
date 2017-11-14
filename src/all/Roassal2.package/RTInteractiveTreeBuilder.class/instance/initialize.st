initialization
initialize
	super initialize.
	self shape circle size: 15; color: Color white; 
		borderColor: (Color colorFrom: '#4682B4'); borderWidth: 2.
	
	labelShape := RTShapeBuilder new.
	labelShape shape: (RTRotatedLabel new).
	labelShape color: Color black; text: #yourself.
	self afterClose: [ :e | e trachelShape color: Color blue ].
	self afterOpen: [ :e | e trachelShape color: Color white ].
	self interaction draggable; popup; 
		when: TRMouseClick do: [:evt | self clickOnElement: evt element ].
	
	layoutBuilder := RTLayoutBuilder new.
	lineShape := RTShapeBuilder new.
	lineShape shape: (RTBezier4Line new
		controllingElements: [:e | self controlPointsFor: e ] ) .
	self paddingText: 10@0.
	self gap: 100@100.
	self rightward.
	