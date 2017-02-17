building
onDetailsFromPackagesFromClassesFromMethods
	browser
		transmit to: #details; from: #classes; from: #methods; from: #packages; 
		andShow: [ :a :class :method |
			a text
					title: 'Method';
					format: [ method formattedSourceText ].
			a text
					title: 'Class';
					useExplicitNotNil;
					when: [ class notNil and: [method isNil]];
					format: [ class formattedSourceText ].
"			browser list
					title: 'References';
					useExplicitNotNil;
					when: [:class | class notNil ];
					display: [:class | class references];
					format: [:each | each glmBehavior name, '>>', each name];
					populate: #focusOnMethod on: $f entitled: 'Jump there' with: [:list | list selection ].
"			a list
					title: 'Senders';
					display: [ method invokingMethods ];
					format: [:each | each mooseName ];
					dynamicActionsOnSelection: [ :list | list selection mooseFinderActions ];
					selectionPopulate: #focusOnMethod on: $f entitled: 'Jump there' with: [:list | list selection ];
					when: [ method invokingMethods notEmpty ].
			a list
					title: 'Messages';
					display: [ method invokedMethods];
					format: [:each | each mooseName ];
					dynamicActionsOnSelection: [ :list | list selection mooseFinderActions ];
					selectionPopulate: #focusOnMethod on: $f entitled: 'Jump there' with: [:list | list selection ];
					when: [ method invokedMethods notEmpty ].
		]