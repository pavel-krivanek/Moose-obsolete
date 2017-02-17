PRAGMA-SELECTORS
subjectClass: aClassOrClassName
	<gtExamplePragma>
	<description: 'Add a class-subject to the example'>
	
	self addSubject: (self classResolver resolve: GTExampleClassSubject example: self className: aClassOrClassName meta: false)