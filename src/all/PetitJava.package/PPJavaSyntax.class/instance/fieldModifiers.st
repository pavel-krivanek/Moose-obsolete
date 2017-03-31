grammar-classes
fieldModifiers

	^ ((self tokenFor: 'volatile') /
		(self tokenFor: 'final') /
		(self tokenFor: 'protected') /
		(self tokenFor: 'private') /
		(self tokenFor: 'public') /
		(self tokenFor: 'static') /
		(self tokenFor: 'transient') /
		annotation) star