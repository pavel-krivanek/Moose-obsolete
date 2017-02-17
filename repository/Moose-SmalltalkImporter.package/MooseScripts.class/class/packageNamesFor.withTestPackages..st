loading scripts
packageNamesFor: aPrefixString withTestPackages: aBoolean
	"Retrieve a list of packages based on a prefix. This method can filter (or not) test packages from the results provided they follow the Seaside convetion of <aPrefixString>-Tests*.
	self packageNamesFor: 'Network*' withTestPackages: false.
	self packageNamesFor: 'Network*' withTestPackages: true
	"
	
	| packages packageNames aTestPrefixString |
	RPackage organizer unregisterPackageNamed: aPrefixString. 
	packages := RPackage organizer packages select: [:each | aPrefixString match: each name ].
	packageNames := packages collect: [:pak | pak name].
	aBoolean ifFalse: [
		aTestPrefixString := aPrefixString, 'Tests*'.
		packageNames := packageNames reject: [ :pakName | aTestPrefixString match: pakName] ].
	^ packageNames