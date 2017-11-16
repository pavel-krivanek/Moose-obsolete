Extension { #name : #NewValueHolder }

{ #category : #'*GT-InspectorExtensions-Core' }
NewValueHolder >> gtAnnouncer [
	^ announcer
]

{ #category : #'*GT-InspectorExtensions-Core' }
NewValueHolder >> gtInspectorPresentationsIn: composite inContext: aGTInspector [
	composite 
		updateOn: Announcement from: announcer.
	super gtInspectorPresentationsIn: composite inContext: aGTInspector
]
