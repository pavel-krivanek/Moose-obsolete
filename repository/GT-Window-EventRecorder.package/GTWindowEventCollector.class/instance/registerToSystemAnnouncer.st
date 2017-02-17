announcement registration
registerToSystemAnnouncer

	SystemAnnouncer uniqueInstance unsubscribe: self.
	
	SystemAnnouncer uniqueInstance weak
		when: PrivacyChangedAnnoucement
			send: #privacyChanged 
			to: self.