utils - morph creation
newEmptyText
	"Answer a new text."

	^TextMorph new
		wrapFlag: true;
		"font: self textFont;"
		autoFit: true;
		lock;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap