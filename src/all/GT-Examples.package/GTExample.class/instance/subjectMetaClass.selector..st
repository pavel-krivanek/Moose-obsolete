PRAGMA-SELECTORS
subjectMetaClass: aClassOrClassName selector: aSelector
	<gtExamplePragma>
	<description: 'Add a method-subject to the example'>
	
	self addSubject: (self methodResolverClass resolve: GTExampleMethodSubject example: self className: aClassOrClassName meta: true selector: aSelector)