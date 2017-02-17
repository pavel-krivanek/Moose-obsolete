rendering
view: classes highlighting: strongClasses on: view
	| methods attributes |

	methods := classes flatCollect: #methods.
	attributes := classes flatCollect: #attributes.

	view shape ellipse withoutBorder; size: 10; fillColor: [:each | 
		(strongClasses includes: each) 
			ifTrue: [ classStrongColor ]
			ifFalse: [ classPaleColor ] ].
	view interaction menu: #mooseMenu.
	view nodes: classes.
	view shape ellipse withoutBorder; size: 6; fillColor: [:each | 
		(strongClasses includes: each parentType) 
			ifTrue: [ methodStrongColor ]
			ifFalse: [ methodPaleColor ] ].
	view interaction menu: #mooseMenu.
	view nodes: methods.	
	view shape ellipse withoutBorder; size: 6; fillColor: [:each | 
		(strongClasses includes: each parentType) 
			ifTrue: [ attributeStrongColor ]
			ifFalse: [ attributePaleColor ] ].
	view interaction menu: #mooseMenu.
	view nodes: attributes.
	view shape line attachPoint: RTCenteredAttachPoint instance; color: [:each | 
		(strongClasses includes: each) 
			ifTrue: [ classPaleColor ]
			ifFalse: [ classPaleColor alpha: 0.3] ].
	view edges: classes from: #yourself to: #superclass.
	view shape line attachPoint: RTCenteredAttachPoint instance; color: [:each | 
		(strongClasses includes: each key) 
			ifTrue: [ classPaleColor alpha: 0.3 ]
			ifFalse: [ classPaleColor alpha: 0.3] ].
	view edges: classes from: #yourself toAll: #methods.
	view shape line attachPoint: RTCenteredAttachPoint instance; color: [:each | 
		(strongClasses includes: each key) 
			ifTrue: [ classPaleColor alpha: 0.3 ]
			ifFalse: [ classPaleColor alpha: 0.3] ].
	view edges: classes from: #yourself toAll: #attributes.
	view shape line attachPoint: RTCenteredAttachPoint instance; color: [:each | 
		(strongClasses includes: each key parentType) 
			ifTrue: [ methodStrongColor alpha: 0.5 ]
			ifFalse: [ methodPaleColor alpha: 0.3] ].
	view edges: methods from: #yourself toAll: #invokedMethods.
	view shape line attachPoint: RTCenteredAttachPoint instance; color: [:each | 
		(strongClasses includes: each key parentType) 
			ifTrue: [ attributeStrongColor alpha: 0.5 ]
			ifFalse: [ attributePaleColor alpha: 0.3] ].
	view edges: attributes fromAll: #accessingMethods to: #yourself.
	view forceBasedLayout