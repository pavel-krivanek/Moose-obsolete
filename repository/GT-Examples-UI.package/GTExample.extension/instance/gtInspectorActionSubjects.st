*GT-Examples-UI
gtInspectorActionSubjects
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ GTExampleNavigation browseAllExampleSubjects: { self } ];
		icon: (Smalltalk ui icons iconNamed: #glamorousBookmark);
		title: 'Subjects'