private
concernResultsIn: a
	^ a dynamic
		title: #label;
		display: [ :each | [ each browser noTitle ] 
			on: Error 
			do: [ :err | GLMRubricTextPresentation new display: 'There was an error computing this concern' ]];
		updateOn: REPConcernResultAnnouncement from: [ :concern | concern announcer ]
	"a magritte 
			title: 'Editor';
			updateOn: REPConcernResultAnnouncement from: [:concern | concern announcer ];
			description: #description"