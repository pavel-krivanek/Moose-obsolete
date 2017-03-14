tests
testValidateNoSubset
	| xml document |

	xml := '<!DOCTYPE one>
		<one idref="a">
			<two id="a">three</two><two id="b"><!--comment--></two>
		</one>'.

	document :=
		(XMLDOMParser on: xml)
			preservesCommentNodes: true;
			parseDocument.
	self
		shouldnt: [document validate]
		raise: XMLValidationException.
	self assert:
		(document canonicallyEquals: 
			((XMLDOMParser on: xml)
				preservesCommentNodes: true;
				parseDocument)).

	document root name: 'five'.
	self
		should: [document validate]
		raise: XMLValidationException.

	document doctypeDefinition: nil.
	self
		shouldnt: [document validate]
		raise: XMLValidationException.