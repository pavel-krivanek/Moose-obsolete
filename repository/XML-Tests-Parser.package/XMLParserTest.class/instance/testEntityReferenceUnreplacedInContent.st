tests
testEntityReferenceUnreplacedInContent
	| xml document |

	xml := '
		<!DOCTYPE one [<!ENTITY declared "replacement">]>
		<one two="&quot;&declared;&quot;">&#60;&declared;&#x2F;&#x3e;</one>'.
	document :=
		(XMLDOMParser on: xml)
			replacesContentEntityReferences: false;
			parseDocument.
	self
		assert: (document root attributeAt: 'two') = '&quot;&declared;&quot;';
		assert: document root contentString = '&#60;&declared;&#x2F;&#x3e;'.