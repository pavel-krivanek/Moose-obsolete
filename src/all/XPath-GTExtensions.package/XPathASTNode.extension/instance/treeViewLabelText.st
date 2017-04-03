*XPath-GTExtensions
treeViewLabelText
	| writeStream |

	writeStream := (String new: 100) writeStream.
	self printTreeViewLabelOn: writeStream.
	^ writeStream contents asText.