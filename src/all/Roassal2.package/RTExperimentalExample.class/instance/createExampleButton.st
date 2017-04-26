utility
createExampleButton
	| shape base color |
"	color := TRPlatform current linearGradientClass new start: 0@ -10.5; stop: 0@10.5;
colorRamp: (Array with: (0.0 -> (Color white alpha: 0.4)) with: (1.0 -> Color transparent)).
"	color := Color blue.
	base := Color r: 0 g: 84 b: 85 range: 256.
	shape := RTCompositeShape new
		add: (RTEllipse new width: 103; height: 50; 
			color: Color gray);
		add: (RTLabel new text: 'Swap Data'; color: Color white).

	
"	base := Color r: 0 g: 84 b: 85 range: 256.
	shape := RTCompositeShape new
		add: (RTEllipse new width: 103; height: 50; 
			color: Color gray);
		add: (RTEllipse new width: 97; height: 47; 
			color: base );
		add: (RTEllipse new width: 71; height: 21;
			color: color) translateBy: 0@ -10;
		add: (RTLabel new text: 'Swap Data'; color: Color white).
"		
	^ shape element.

