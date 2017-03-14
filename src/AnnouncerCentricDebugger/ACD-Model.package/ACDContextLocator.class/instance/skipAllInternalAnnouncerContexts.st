filtering actions
skipAllInternalAnnouncerContexts
	"Filter all contexts until the one that triggered the announcer is found."
	
	self findContextSuchThat: [ :ctxt | 
		(ctxt methodSelector = #announce:) and: [ 
			ctxt methodClass = Announcer ] ]