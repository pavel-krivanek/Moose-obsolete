actions
delete
	"Actions to delete a model. This is accessible from the Moose Panel"

	<menuItem: 'Delete' category: 'Utilities'>
	| wantsToDelete |
	wantsToDelete := UIManager default confirm: 'Are you sure to want to delete ', self mooseName printString, '?'.
	wantsToDelete ifFalse: [ ^ self ].
	
	self remove