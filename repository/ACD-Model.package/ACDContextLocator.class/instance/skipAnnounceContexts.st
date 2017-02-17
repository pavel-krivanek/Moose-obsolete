filtering actions
skipAnnounceContexts
	
	self findContextSuchThat: [ :ctxt | 
		(ctxt methodSelector = #announce:) and: [ 
			ctxt sender methodSelector ~= #announce: ] ]