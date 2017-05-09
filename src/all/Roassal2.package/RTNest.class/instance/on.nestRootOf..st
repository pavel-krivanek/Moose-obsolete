public
on: backElement nestRootOf: elements
	"public method"

	"backElement is the elements on which elements are layout-ed"

	"elements is a collection of elements. These elements may have relation between them (e.g., nesting). This method is useful for example to nest elements that have been produced by RTMondrian"

	"- position the elements above backElement. 
	 - resize backElement to encapsulate the elements
	 - perform a layout of the elements if a layout has been set
	 - make the inner elements draggable"

	"We check if the shape of backElement is a composite shape. nested elements should not be on the Label. We manually consider this situation since it is recurrent"

	^ self on: backElement nest: (elements select: [ :e | e parentElement isNil ])