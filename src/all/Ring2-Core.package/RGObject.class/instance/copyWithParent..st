copying
copyWithParent: newParent

	"create copy of the definition and then assign the new parent"
	
	^ self copy 
		parent: newParent;
		yourself.