accessing
filterDescendants
	"if I have a descendant that also appears as a descendant in my descendants, remove it from the set of my descendants"
	|dict myDesc mygrandDesc|
	
	self nodes do: [:node | node descendants do:[:desc | (desc descendants intersection: (node descendants)) ifNotEmptyDo: [:intersect | node removeDescendant: (intersect asArray)]]] 