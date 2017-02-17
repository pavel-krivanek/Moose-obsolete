building presentations
inspectorIn: aComposite on: anObject
	
	super inspectorIn: aComposite on: anObject.
	
	"aComposite last title: 'Inspector'.
	self progressIn: aComposite.
	self tallyIn: aComposite.
	self debugViewIn: aComposite."
	^ aComposite