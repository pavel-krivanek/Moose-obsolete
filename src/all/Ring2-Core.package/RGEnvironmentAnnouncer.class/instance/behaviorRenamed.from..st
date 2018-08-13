triggering
behaviorRenamed: anRGBehavior from: oldName

	self announce: (ClassRenamed 
		class: anRGBehavior 
		category: anRGBehavior category 
		oldName: oldName 
		newName: anRGBehavior name)