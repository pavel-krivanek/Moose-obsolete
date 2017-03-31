announcement registration
registerToWorldAnnouncements

	World announcer unsubscribe: self.
	
	World announcer weak
		when: WindowOpened send: #windowOpened: to: self;
		when: WindowClosed send: #windowClosed: to: self.