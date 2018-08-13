triggering
behaviorParentRenamed: anRGBehavior from: oldName

	self announce: (ClassParentRenamed 
		classParentOf: anRGBehavior
		renamedFrom: oldName
		to: anRGBehavior name)