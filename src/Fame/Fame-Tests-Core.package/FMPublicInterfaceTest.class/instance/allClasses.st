private
allClasses

	^Smalltalk allClasses select: [ :each |
		each category beginsWith: 'Fame-' ]