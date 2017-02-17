groups
allClassGroups
	<navigation: 'All class groups'>
	^ MooseGroup withAll: 
		(FAMIXTypeGroup withAll: 
			((self versions collect: #versionEntity) "we get the moosemodel"
				collect: #allClasses))