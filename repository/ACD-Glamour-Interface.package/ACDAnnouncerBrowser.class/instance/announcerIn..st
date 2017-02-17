building
announcerIn: aComposite 

	"Not such a nice way to reuse the code"
	GTObjectVariablesBrowser new variablesIn: aComposite.
	aComposite presentations last 
		title: 'Announcer';
		display: [ :aSession | aSession announcer gtInspectorVariableValuePairs ];
		selectionAct: [ :aPresentation |  aPresentation selection explore] on: $i entitled: 'Explore' 

