accessing
propertyRatio
	<MSEProperty: #propertyRatio type: #Number>
	<MSEComment: 'Fraction represented by this group compared to originalGroup with respect to the property'>
	
	^ (self propertyTotal / self propertyTotalOriginal) asFloat 