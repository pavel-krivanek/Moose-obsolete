*Moose-SmalltalkImporter-nocheckAdding
nocheckAdd: anElement 
	(anElement perform: opposite) nocheckUnsafeAdd: owner.
	"(values includes: anElement) not ifTrue: [ "
	values add: anElement.	"]"
	^ anElement