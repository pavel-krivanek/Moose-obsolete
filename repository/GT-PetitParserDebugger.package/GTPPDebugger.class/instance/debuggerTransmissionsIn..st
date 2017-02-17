building
debuggerTransmissionsIn: browser

	super debuggerTransmissionsIn: browser.
	
	browser transmit
		from: #stack port: #entity;
		to: #stream;
		when: [ :aSession | aSession notNil ];
		andShow: [ :aComposite | self streamIn: aComposite ].
	