withText
testWithTextAndColor

	| v el |
	v := RTView new.
	builder := RTShapeBuilder new.
	builder circle 
				size: 50; 
				fillColor: (Color purple alpha: 0.3);
				withText;
				withTextColor: Color red.
	el := builder elementOn: 'hello'.
	v add: el.
	
	self assert: el shape class == RTCompositeShape.
	