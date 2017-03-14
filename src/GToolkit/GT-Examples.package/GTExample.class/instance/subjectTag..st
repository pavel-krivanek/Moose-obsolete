PRAGMA-SELECTORS
subjectTag: tagName
	<gtExamplePragma>
	<description: 'Add a tag-subject to the example'>
	
	self addSubject: (GTExampleTagSubject fromTagNamed: tagName)