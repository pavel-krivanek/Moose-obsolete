method
tagsForMethod: anRGMethod do: aBlock

	| realMethod |
	
	realMethod := self realMethodFor: anRGMethod.
	{ realMethod protocol } do: aBlock.