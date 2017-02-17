testing
= anExampleSubject
	^ self class = anExampleSubject class
		and: [ self bookName = anExampleSubject bookName 
			and: [ self title = anExampleSubject title ] ]