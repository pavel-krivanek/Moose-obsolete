entity collection
silentlyAdd: anElement 
	 
	self suspendAllAnnouncementsDuring: [^self add: anElement].