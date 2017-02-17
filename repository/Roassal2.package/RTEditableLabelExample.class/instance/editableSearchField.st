examples
editableSearchField
	<gtExample>
	<label: 'Editable search-field'>
	<description: 'Display a tree of classes. Highlight nodes/classes that match the search-query'>
	
	"
	self new editableSearchField.
	"
	| b lbl searchField |
b := RTMondrian new.

b nodes: Collection withAllSubclasses.
b edges connectFrom: #superclass.
b layout tree.
lbl := RTEditableLabel new text: 'Enter a part of the name of the class'.
searchField := lbl element.
searchField setAsFixed.

lbl editLabelShape: false;
	updateMorphExtent: false.
lbl onKeystroke: [ :text | 
	b view elements do: [ :es | es trachelShape color: Color lightGray ].
	b view elements do: [ :es | 
		"es model = Bag ifTrue: [ self halt ]."
		( ('*', text, '*') match: es model name)
			ifTrue: [ es trachelShape color: Color red ] ].
	b view signalUpdate. ].
lbl onPressingEnter: [ :text| 
	lbl hideTextMorphFor: searchField. ].

b view add: searchField.
RTHorizontalLineLayout on: (Array with: searchField). 

^ b