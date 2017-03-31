instance creation
center: aCenter radius: aRadius startAngle: aStart endAngle: anEnd
	^ self new
		setCircle: (GCircle center: aCenter radius: aRadius) startAngle: aStart endAngle: anEnd;
		yourself