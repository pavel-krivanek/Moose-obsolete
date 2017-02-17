instance creation
fromTopic: aHelpTopic
	^ self fromBook: aHelpTopic title title: (aHelpTopic subtopics 
		ifNotEmpty: [ :topics | topics first title ]
		ifEmpty: [ nil ])