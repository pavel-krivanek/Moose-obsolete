building
debuggerTransmissionsIn: browser
	
	browser transmit
		to: #stack;
		andShow: [ :composite | self stackIn: composite ].
	browser transmit
		from: #stack port: #entity;
		to: #stack port: #currentContext;
		transformed: [ self currentContext ].
			
	browser transmit
		from: #stack port: #currentContext;
		to: #receiver;
		when: [ :session | session notNil ];
		andShow: [ :composite | self receiverIn: composite ].
	browser transmit
		to: #announcer;
		andShow: [ :composite | self announcerIn: composite ].
	browser transmit
		to: #sender;
		andShow: [ :composite | self senderIn: composite ]