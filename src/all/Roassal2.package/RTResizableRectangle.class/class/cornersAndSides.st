accessing
cornersAndSides
	^ OrderedCollection new add: #top;
		add: #topRight;
		add: #right;
		add: #bottomRight;
		add: #bottom;
		add: #bottomLeft;
		add: #left;
		add: #topLeft;
		asArray