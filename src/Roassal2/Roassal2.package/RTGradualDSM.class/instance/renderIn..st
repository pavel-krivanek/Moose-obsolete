hooks
renderIn: aView
	super renderIn: aView.	
	
	1 to: objectsX size do: [:j | 
		RTMetricNormalizer new
			elements: ((self columnAt: j) select: [:e | selectElement rtValue: e]);
			normalizeColor: score using: (Array with: Color veryVeryLightGray with: (Color colorFrom: '#4d79ff') );
			alphaColor: self transparencyWhenNonHighlighted.
			].
	^ aView