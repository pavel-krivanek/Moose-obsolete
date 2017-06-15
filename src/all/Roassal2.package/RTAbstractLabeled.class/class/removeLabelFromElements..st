removing
removeLabelFromElements: elements
	"Remove label for each element of the collection"
	elements do: [ :e | self removeLabelFrom: e ]