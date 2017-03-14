actions
locateAnnouncerEntryPoint
	"Locate the initial context that triggered the delivery of
	a subscription. The initial context is the first that send 
	the message announce:"

	^ self 
		skipAllInternalAnnouncerContexts;
		skipAnnounceContexts;
		result