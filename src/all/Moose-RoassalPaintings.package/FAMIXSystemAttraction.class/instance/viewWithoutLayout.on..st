rendering
viewWithoutLayout: classes on: view
	| methods attributes edges |
	methods := classes flatCollect: #methods.
	attributes := classes flatCollect: #attributes.
	view shape ellipse fillColor: classStrongColor; size: 10.
	view nodes: classes.
	view shape ellipse fillColor: methodStrongColor; size: 6.
	view nodes: methods.
	view shape ellipse fillColor: attributeStrongColor; size: 6.
	view nodes: attributes.
	view shape line attachPoint: RTCenteredAttachPoint instance; color: (classStrongColor alpha: 0.5).
	edges := view edges source: classes connectFrom: #yourself to: #superclass.
	view shape line attachPoint: RTCenteredAttachPoint instance; color: (classPaleColor alpha: 0.5).
	edges := edges, (view edges source: classes connectFrom: #yourself toAll: #methods).
	view shape line attachPoint: RTCenteredAttachPoint instance; color: (classPaleColor alpha: 0.5).
	edges := edges, (view edges source: classes connectFrom: #yourself toAll: #attributes).
	view shape line attachPoint: RTCenteredAttachPoint instance; color: (methodStrongColor alpha: 0.5).
	view edges source: methods connectFrom: #yourself toAll: #invokedMethods.
	view shape line attachPoint: RTCenteredAttachPoint instance; color: (attributeStrongColor alpha: 0.5).
	attributes do: [ :each | 
		view edges source: each accessingMethods connectFrom: #yourself to: each.
	].
	^ edges