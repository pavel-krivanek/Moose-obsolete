meta
generateClassesFrom: aCollection inPackage: aString
	"I generate the implementation for some meta-described classes. aCollection need to contain the full set of meta-described classes so that the metamodel is complete. aString is the name of the FM3 package for which elements should be generated. In other words, only elements belonging to FM3 package 'aString' will be generated, not all elements of the metamodel in aCollection.

	This method is for incremental generation of metamodels, especially Famix extensions.
	MooseModel generateClassesFrom: MooseModel metamodelClasses inPackage: 'NewExtension'
	"
	
	|tower generator fm3Package |
	tower := MooseModel metaBuilder: aCollection withProcessor: MoosePragmaProcessor new.
	generator := FMDefaultCodeGenerator new.
	fm3Package := tower metamodel packageNamed: aString.
	generator acceptFamePackage: fm3Package.
	self flag: #classExtensionNotSupported. "currently the generator does not handle extension to other packages - cf #acceptFamePackage:"
	generator previewChanges.