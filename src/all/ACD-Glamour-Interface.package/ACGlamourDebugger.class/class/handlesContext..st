testing
handlesContext: aContext

	 ^ (self sessionClass stackFilterFor: aContext) locateAnnouncerEntryPoint notNil 