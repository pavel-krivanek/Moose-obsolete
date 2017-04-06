accessing
manages: aClass

	^ self mergedClasses anySatisfy: [ :each | each mergedClass = aClass ]