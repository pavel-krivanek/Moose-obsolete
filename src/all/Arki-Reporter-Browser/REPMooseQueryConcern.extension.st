Extension { #name : #REPMooseQueryConcern }

{ #category : #'*arki-reporter-browser' }
REPMooseQueryConcern >> browser [
	^ (MooseFinder new first noTitle startOn: self result) 
]

{ #category : #'*arki-reporter-browser' }
REPMooseQueryConcern >> gtInspectorResultIn: composite [
	<gtInspectorPresentationOrder: 9>
	composite list
		title: 'Result';
		display: [ self result ];
		when: [ self result notNil ]
]
