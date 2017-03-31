PRAGMA-SELECTORS
subjectMetaClass: aClassOrClassName
	<gtExamplePragma>
	<description: 'Add a meta-class-subject to the example'>
	
	self addSubject: (self classResolverClass resolve: GTExampleClassSubject example: self className: aClassOrClassName meta: true)