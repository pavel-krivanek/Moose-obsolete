events handling
classModified: anEvent
	
	| cls |
	
	cls := anEvent classAffected.
	(self traits includes: cls instanceSide) ifTrue: [ 
		self cleanMergedClass; merge   ].
	