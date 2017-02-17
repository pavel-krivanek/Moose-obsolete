tests
testAttributeXMLBase
	| document |

	document :=
		XMLDOMParser parse: '
			<one xml:base="a/b">
				<two xml:base="c/d">
					<three xml:base="/e/f">test</three>
					<four xml:base=""><!--resolved as inherited base--> 
						<five/><!--no base attribute-->
					</four>
				</two>
			</one>'.
	self assert:
		(document allElementsCollect: [:each | each attributeAt: 'xml:base']) asArray =
			#('a/b' 'a/c/d' '/e/f' 'a/c/d' '').

	"resolution should not cause decoding/encoding"
	document :=
		XMLDOMParser parse: '
			<one xml:base="[%61]/{%62}">
				<two xml:base="{%63}/(%64)">
					<three xml:base="/!%65!/|%66|">test</three>
				</two>
			</one>'.
	self assert:
		(document allElementsCollect: [:each | each attributeAt: 'xml:base']) asArray =
			#('[%61]/{%62}' '[%61]/{%63}/(%64)' '/!%65!/|%66|').

	document :=
		XMLDOMParser
			parse:
				'<one xml:base=""><!--resolved as inherited base-->
					<two/><!--no base attribute-->
				</one>'
			documentURI: 'doc.xml'.
	self assert: (document root attributeAt: 'xml:base') = 'doc.xml'.