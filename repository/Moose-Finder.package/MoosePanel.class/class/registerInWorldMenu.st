opening
registerInWorldMenu
	self environment at: #TheWorldMenu ifPresent: [ :class |
		 ((class respondsTo: #registerOpenCommand:)
			and: [((class class >>#registerOpenCommand:) sendsSelector: #deprecated:) not])
 	     			ifTrue: [class registerOpenCommand: { 'Moose Panel' . {self. #open}}]]
