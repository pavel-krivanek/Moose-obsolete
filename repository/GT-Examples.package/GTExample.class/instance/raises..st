PRAGMA-SELECTORS
raises: aClassOrClassName
	<gtExamplePragma>
	<description: 'This example is expected to raise the given exception. The example (as a test) will fail if the exception is not raised.'>
	(self classResolver new
		theClassName: aClassOrClassName;
		meta: false;
		yourself) theClassDo: [ :class | self exceptions add: class ]