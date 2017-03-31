*XML-Parser-GTExtensions
treeViewLabelText
	"the label Text of this node to be used in a tree view"
	^ self asHighlightedTextWrittenWith: [:writer |
		self writeTreeViewLabelXMLOn: writer]