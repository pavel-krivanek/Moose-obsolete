DSL
element: elementName with: body 
	"Addes an element with body (which is a block)."
	
	client beginElement: elementName.
	body value.
	client endElement: elementName