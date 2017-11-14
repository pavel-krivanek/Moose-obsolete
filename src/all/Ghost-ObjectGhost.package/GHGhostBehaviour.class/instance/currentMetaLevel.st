accessing
currentMetaLevel
	^GHMetaLevel standard
	"Standard meta level disables interception of messages from standard dev tools. 
	With such default behaviour it possible to use tools on ghosts with broken interception logic.
	When it will be done meta level can be changed to GHMetaLevel empty (or more suitable)"
	