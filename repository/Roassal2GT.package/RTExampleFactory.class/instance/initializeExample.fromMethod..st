private - creating examples
initializeExample: aGTExample fromMethod: aCompiledMethod
	super initializeExample: aGTExample fromMethod: aCompiledMethod.
	
	self initializeIconFromMethod: aCompiledMethod forExample: aGTExample.
