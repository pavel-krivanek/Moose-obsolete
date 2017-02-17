accessing
fullNamesOfEntitiesToBeExtracted 

	| fm3ElementsSelected |
	fm3ElementsSelected := fm3Elements select: [:each | entitiesToBeExtracted includes: each name] .
	
	^  fm3ElementsSelected collect: [:each | each fullName].