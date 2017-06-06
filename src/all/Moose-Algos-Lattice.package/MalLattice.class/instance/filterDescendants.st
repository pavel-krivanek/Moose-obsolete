accessing
filterDescendants
	"if I have a descendant that also appears as a descendant in my descendants, remove it from the set of my descendants"

	self nodes
		do: [ :node | node descendants do: [ :desc | (desc descendants intersection: node descendants) ifNotEmpty: [ :intersect | node removeDescendant: intersect asArray ] ] ]