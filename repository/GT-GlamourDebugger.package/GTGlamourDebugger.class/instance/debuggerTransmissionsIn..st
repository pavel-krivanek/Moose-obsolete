building
debuggerTransmissionsIn: browser.
		
	super debuggerTransmissionsIn: browser.
	
	browser transmit
		from: #stack port: #selection;
		to: #browser;
		andShow: [ :composite | self browserStructureFor: self session rootBrowser in: composite ]