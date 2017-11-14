installation
replaceClassWithGhost: aClass

	| replacedGhost |
	replacedClass := ghost.
	replacedGhost := aClass.
	
	aClass become: ghost.
	ghost := replacedGhost