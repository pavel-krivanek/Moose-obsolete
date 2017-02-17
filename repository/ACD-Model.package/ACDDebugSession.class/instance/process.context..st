initialization
process: aProcess context: aContext
	| announcerContext |
	super process: aProcess context: aContext.
	
	announcerContext := (ACDContextLocator forContext: aContext sender) locateAnnouncerEntryPoint.
	self 
		initializeSenderContext: announcerContext sender 
		announcerContext: announcerContext 
		receiverContext: aContext
	
