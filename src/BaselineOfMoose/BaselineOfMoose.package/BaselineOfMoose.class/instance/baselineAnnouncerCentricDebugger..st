baseline
baselineAnnouncerCentricDebugger: spec 
    
	#(	
		'ACD-Model'
		'ACD-Glamour-Interface'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #AnnouncerCentricDebugger) ]].
