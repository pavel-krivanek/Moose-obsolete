entity collection
silentlyRemove: anElement 
	
	self suspendAllAnnouncementsDuring: [^self remove: anElement].