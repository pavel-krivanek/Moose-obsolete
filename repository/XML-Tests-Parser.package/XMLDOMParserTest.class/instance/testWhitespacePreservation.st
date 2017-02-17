tests
testWhitespacePreservation
	| xml root notPreserved preserved |

	xml := '
		<!DOCTYPE root [
			<!ELEMENT root (not-preserved)>
			<!ELEMENT not-preserved (preserved+)>
			<!ELEMENT preserved (not-preserved?)>
			<!ATTLIST root xml:space (default|preserve) #IMPLIED>
			<!ATTLIST not-preserved xml:space (default|preserve) #IMPLIED>
			<!ATTLIST preserved xml:space (default|preserve) "preserve">
		]>
		<root xml:space="preserve">
			<not-preserved xml:space="default">
				<preserved>
				</preserved>
			</not-preserved>
		</root>'.
	root := (XMLDOMParser parse: xml) root.
	self
		assert: root nodes size = 3;
		assert: root nodes first isStringNode;
		assert: root nodes first isWhitespace;
		assert: (root nodes second isElementNamed: 'not-preserved');
		assert: root nodes third isStringNode;
		assert: root nodes third isWhitespace.

	notPreserved := root nodes second.
	self
		assert: notPreserved nodes size = 1;
		assert: (notPreserved nodes first isElementNamed: 'preserved').

	preserved := notPreserved firstNode.
	self
		assert: preserved nodes size = 1;
		assert: preserved nodes first isStringNode;
		assert: preserved nodes first isWhitespace.