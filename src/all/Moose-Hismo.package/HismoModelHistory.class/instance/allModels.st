groups
allModels
	<navigation: 'All models'>
	^ MooseGroup 
		withAll: (self versions collect: #versionEntity) 
		withDescription: 'All models'