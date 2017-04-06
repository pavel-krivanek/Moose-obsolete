hooks
initializeSetOfElements: elements
 	elements do:
		[ :each | self initializeSingleElement: each ]