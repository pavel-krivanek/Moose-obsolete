private
saveProject: project with: message

	(project projectPackage goferCommitPackage: message)
		ifTrue: [ OBInformRequest message: project label, ' saved' ]
		ifFalse: [ OBInformRequest message: project label, ' not saved' ]