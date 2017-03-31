tests
testValidate
	| xml document |

	super testValidate.

	xml := '
		<!DOCTYPE one [
			<!ELEMENT one (two+, three)>
			<!ATTLIST one idref IDREF #REQUIRED>
			<!ELEMENT two (#PCDATA)*>
			<!ATTLIST two id ID #REQUIRED>
			<!ELEMENT three EMPTY>]>
		<!--comment-->
		<one idref="a">
			<two id="a">three</two>
			<two id="b"><!--comment--></two>
			<three></three>
		</one>
		<?target data?>'.

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

	document
		allElementsNamed: 'two'
		do: [:each | each attributeAt: 'id' put: 'a'].
	self
		should: [document validate]
		raise: XMLValidationException.

	document := XMLDOMParser parse: xml.
	document root name: 'zero'.
	self
		should: [document validate]
		raise: XMLValidationException.

	document := XMLDOMParser parse: xml.
	document root attributeAt: 'idref' put: 'undeclared'.
	self
		should: [document validate]
		raise: XMLValidationException.

	document := XMLDOMParser parse: xml.
	document root addElementNamed: 'four'.
	self
		should: [document validate]
		raise: XMLValidationException.

	document := XMLDOMParser parse: xml.
	(document root elementAt: 'three') addNode:
		(XMLComment string: 'comment').
	self
		should: [document validate]
		raise: XMLValidationException.

	document := XMLDOMParser parse: xml.
	(document root elementAt: 'three') addNode:
		(XMLPI
			target: 'target'
			data: 'data').
	self
		should: [document validate]
		raise: XMLValidationException.

	document := XMLDOMParser parse: xml.
	(document root elementAt: 'three') addNode: (XMLCData string: 'five').
	self
		should: [document validate]
		raise: XMLValidationException.

	document := XMLDOMParser parse: xml.
	(document root elementAt: 'three') addElementNamed: 'four'.
	self
		should: [document validate]
		raise: XMLValidationException.

	(document := XMLDOMParser parse: xml) doctypeDefinition: nil.
	document root
		name: 'zero';
		attributeAt: 'idref' put: 'undeclared';
		addElementNamed: 'four';
		allElementsNamed: 'two' do: [:each | each attributeAt: 'id' put: 'same'].
	(document root elementAt: 'three')
		addNode: (XMLComment string: 'comment');
		addNode:
			(XMLPI
				target: 'target'
				data: 'data');
		addNode: (XMLCData string: 'five');
		addElementNamed: 'four'.
	self
		shouldnt: [document validate]
		raise: XMLValidationException.