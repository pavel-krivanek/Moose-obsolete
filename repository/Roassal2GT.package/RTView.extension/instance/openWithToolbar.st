*Roassal2GT-Glamour
openWithToolbar
	^ GLMCompositePresentation new 
		title: 'Roassal';
		with: [:composite | composite roassal2 title: 'Painting'; initializeView: [self ] ];
		openOn: self