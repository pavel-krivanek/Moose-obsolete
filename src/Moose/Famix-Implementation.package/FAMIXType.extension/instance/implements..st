*Famix-Implementation
implements: aString
	^ self methods
		anySatisfy: [ :each | aString = each signature	 "was changed from match: for performances and because signature is case sensitive" ]