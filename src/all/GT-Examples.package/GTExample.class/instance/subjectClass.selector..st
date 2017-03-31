PRAGMA-SELECTORS
subjectClass: aClassOrClassName selector: aSelector
	<gtExamplePragma>
	<description: 'Add a method-subject to the example'>
	
	self addSubject: (self methodResolverClass resolve: GTExampleMethodSubject example: self className: aClassOrClassName meta: false selector: aSelector)