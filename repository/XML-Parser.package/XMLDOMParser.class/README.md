This class is an XML parser that parses XML into a tree of nodes with an XMLDocument node as the root:
	document := XMLDOMParser parse: xmlStringOrStream.

See the XML-Parser-DOM category for info on the node classes.

By default, XML comments are ignored during parsing and "<![CDATA[...]]>" sections are merged with adjacent character data as XMLString nodes. Use #preservesCommentNodes: or #preservesCDataNodes: before parsing to change this. You can also use #preservesIgnorableWhitespace: to preserve ignorable whitespace as XMLString nodes.

To control what node classes the parser uses to construct the tree, inject a custom node factory with #nodeFactory: prior to parsing. See XMLNodeFactory.

See the superclass for more info.