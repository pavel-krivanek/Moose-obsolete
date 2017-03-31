lastPopup
lastPopup
	"Return the group of elements that have been recently added as a popup"
	lastPopup isNil ifTrue: [ ^ nil ].
	^ RTGroup withAll: lastPopup
	
"	^ lastPopup isNil
		ifTrue: [ nil ]
		ifFalse: [ lastPopup first ]"


"	(lastPopup notNil and: [ lastPopup size > 0 ]) ifTrue: [ ^ lastPopup first ]. 
	^ nil."
	
"	^ lastPopup isNil
		ifTrue: [ nil ]
		ifFalse: [ lastPopup ]
"