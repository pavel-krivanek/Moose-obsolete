initialization
initialize
	orphanedItems := OrderedCollection new.
	itemsBlock := [ #() ].
	displayNameBlock := [ :item | item name ].
	super initialize