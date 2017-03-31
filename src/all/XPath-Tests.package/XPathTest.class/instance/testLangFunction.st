tests
testLangFunction
	| langElement docWithLangElements |

	(langElement := XMLElement named: 'test')
		attributeAt: 'xml:lang' put: 'en-us'.
	self
		assert: ('lang("En")' asXPath in: langElement);
		assert: ('lang("en-US")' asXPath in: langElement);
		deny: ('lang("en-UK")' asXPath in: langElement);
		deny: ('lang("DE")' asXPath in: langElement).

	langElement attributeAt: 'xml:lang' put: 'En'.
	self
		assert: ('lang("En")' asXPath in: langElement);
		deny: ('lang("en-US")' asXPath in: langElement);
		deny: ('lang("en-UK")' asXPath in: langElement);
		deny: ('lang("DE")' asXPath in: langElement).

	"from the spec"
	docWithLangElements :=
		XMLDOMParser parse:
			'<doc>
				<para xml:lang="en"/>
				<div xml:lang="en"><para/></div>
				<para xml:lang="EN"/>
				<para xml:lang="en-us"/>
			</doc>'.
	self
		assertNodeSet:
			(docWithLangElements xpath: '/descendant-or-self::*[lang("en")]')
		hasNodes:
			docWithLangElements root descendantElements.
	self
		assertNodeSet:
			(docWithLangElements xpath: '/descendant-or-self::*[lang("en-us")]')
		hasNodes:
			(XMLNodeList with: docWithLangElements descendantElements last).