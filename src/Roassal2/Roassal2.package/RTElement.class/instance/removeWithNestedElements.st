actions
removeWithNestedElements
	"Remove the element from the view. Edges that may be connected are also removed"
	self nestedElements do: #remove.
	self remove. 
	