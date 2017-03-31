private
basicProcess: anExample 
	^ self 
		process: anExample 
		withArguments: [ anExample dependenciesOrArguments collect: [ :each | self process: each ] ] 