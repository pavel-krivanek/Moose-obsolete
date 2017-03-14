announcement registration
registerToWindowAnnouncementsFor: aWindow

	^ aWindow announcer
		when: WindowActivated send: #windowActivated: to: self;
		when: WindowDeActivated send: #windowDeActivated: to: self;
		when: WindowCollapsed send: #windowCollapsed: to: self;
		when: WindowExpanded send: #windowExpanded: to: self;
		when: WindowLabelled send: #windowLabelled: to: self;
		when: WindowMoved send: #windowMoved: to: self.