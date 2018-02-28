Extension { #name : #MAElementDescription }

{ #category : #'*Magritte-GT-private' }
MAElementDescription >> glmAddSelectionActionsTo: presentation [
	presentation dynamicActionsOnSelection: [ :pres |
		| actions |
		actions := OrderedCollection new.
		pres selection magritteActionDescriptions do: [ :desc |
			| action |
			action := GLMGenericAction new
				action: [ pres selection perform: desc selector ];
				title: desc label;
				shortcut: (desc shortcut ifNil: [ desc label first lowercase ]);
				yourself.
			actions add: action ].
		actions ].
]

{ #category : #'*Magritte-GT-private' }
MAElementDescription >> glmCustomizePresentation: presentation for: domainObject [
	presentation hasTitle ifFalse: [ presentation title: self label ].
	presentation hasTransformation ifFalse: [ presentation display: (self accessor read: domainObject) ].
	self glmAddSelectionActionsTo: presentation
]

{ #category : #'*Magritte-GT' }
MAElementDescription >> glmPresentation [
	^ self propertyAt: #glmPresentation
]

{ #category : #'*Magritte-GT' }
MAElementDescription >> glmPresentation: aBlock [
	| wrapper |
	wrapper := [ :composite :context :subject |
		| presentation |
		presentation := aBlock cull: composite cull: context.
		self glmCustomizePresentation: presentation for: subject ].
	self propertyAt: #glmPresentation put: wrapper
]
