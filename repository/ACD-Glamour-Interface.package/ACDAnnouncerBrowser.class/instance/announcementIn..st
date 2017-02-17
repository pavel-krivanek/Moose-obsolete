building
announcementIn: aComposite 

	"Not such a nice way to reuse the code"
	GTObjectVariablesBrowser new variablesIn: aComposite.
	aComposite presentations last 
		title: 'Announcement';
		display: [ :aSession | aSession announcement gtInspectorVariableValuePairs ];
		selectionAct: [ :aPresentation |  aPresentation selection explore] on: $i entitled: 'Explore'