hooks
registerRemoveCallbackForElement: element
	| callback |
	callback := TRRemoveCallback new
		block: [ :shape | labelTrachel remove ].	"Make sure that if we remove the element, the trachel shape is also removed"
	element trachelShape addCallback: callback.
	element
		attributeAt: #RTLabelledCallback put: callback;
		attributeAt: #RTLabelledLabel put: labelTrachel