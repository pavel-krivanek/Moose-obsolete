Extension { #name : #REPConcern }

{ #category : #'*arki-reporter-browser' }
REPConcern >> browser [
	| browser |
	browser := GLMTabulator new.
	browser title: #label.
	browser column: #explanation.
	browser transmit to: #explanation; andShow: [:a | 
		a text 
			display: #explanation ].
	^ browser 
]

{ #category : #'*arki-reporter-browser' }
REPConcern >> open [
	| spec |
	spec := REPConcernSpecification on: self model.
	spec concern: self.
	spec open
]

{ #category : #'*arki-reporter-browser' }
REPConcern class >> openOn: aModel [
	^ (self on: aModel) open
]
