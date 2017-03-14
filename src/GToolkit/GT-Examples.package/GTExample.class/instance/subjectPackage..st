PRAGMA-SELECTORS
subjectPackage: packageName
	<gtExamplePragma>
	<description: 'Add a package-subject to the example'>
	
	self addSubject: (GTExamplePackageSubject fromPackageNamed: packageName)