private - accessing
contents: aCollectionOfMorphElements 
	"fill in the morph contents of the dialog window with morphs from aCollectionOfMorpElements. aCollectionOfMorpElements represent the morph contents of all wizard parts composing this wizardPane. Used in the method open. Each element will be diplayed one under the other"
	
	"|contents|
	contents := PanelMorph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		fillStyle: Color transparent; 
		changeTableLayout;
		cellInset: 8; yourself.

	aCollectionOfMorphElements do: [:each | contents addMorphBack: each].
	self dialogWindow  contentMorph: contents."
	|contents|
	(displayLayout = #column)
		ifTrue: [
			contents := self newRowWith: aCollectionOfMorphElements .
			]
		ifFalse: [
			contents := self newColumnWith: aCollectionOfMorphElements .
			]. 
	self dialogWindow  contentMorph: contents.
	^contents

	