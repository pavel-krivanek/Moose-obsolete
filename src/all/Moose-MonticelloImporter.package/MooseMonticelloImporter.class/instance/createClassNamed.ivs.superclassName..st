populating
createClassNamed: classNameSymbol ivs: varNameStrings superclassName: superclassName
	"The superclass is not set here. This is done later"
	| famixClass |
	famixClass := FAMIXClass new name: classNameSymbol asSymbol.
	varNameStrings do: [:varName | 
		famixClass addAttribute: (FAMIXAttribute new name: varName asSymbol)].
	self targetModel add: famixClass.
	famixClass propertyNamed: #superclassName put: superclassName.						
	^ famixClass