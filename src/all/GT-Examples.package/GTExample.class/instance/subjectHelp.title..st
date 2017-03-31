PRAGMA-SELECTORS
subjectHelp: bookName title: title
	<gtExamplePragma>
	<description: 'Add a help/topic-subject to the example'>
	
	self addSubject: (GTExampleHelpSubject fromBook: bookName title: title)