accessing
topic
	topic ifNil: [ 
		CustomHelp withAllSubclassesDo: [ :class | 
			class asHelpTopic ifNotNil: [ :help |
				(help title = bookName
						and: [ title isNil 
							or: [ help subtopics anySatisfy: [ :subhelp | 
									subhelp title = title ] ] ]) ifTrue: [ 
					topic := help ] ] ] ].
	^ topic