tests
testEntityReferenceUnreplaced
	| beforeSubset subset afterSubset xml document |

	beforeSubset := '<?xml version="1.1"?> <!DOCTYPE entity ['.
	subset :=
		'<!ENTITY % first "<!ENTITY second &#34;replacement&#34;>">
		%first;'.
	afterSubset := ']><entity>&second;</entity>'.
	xml := beforeSubset, subset, afterSubset.
	self assert: (XMLDOMParser parse: xml) root contentString = 'replacement'.
	
	document :=
		(XMLDOMParser on: xml)
			replacesContentEntityReferences: false;
			parseDocument.
	self assert: document root contentString = '&second;'.
	self
		should: [
			(SAXHandler on: (beforeSubset, '%first;]>'))
				replacesContentEntityReferences: false;
				parseDocument]
		raise: XMLValidationException.