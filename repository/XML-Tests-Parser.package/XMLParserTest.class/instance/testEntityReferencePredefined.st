tests
testEntityReferencePredefined
	| document references replacements |

	references := String new writeStream.
	replacements := String new writeStream.
	XMLWellFormedParserTokenizer predefinedEntities keysAndValuesDo: [:name :char |
		references
			nextPut: $&;
			nextPutAll: name;
			nextPut: $;.
		replacements nextPut: char].

	document :=
		XMLDOMParser parse:
			('<!DOCTYPE root [
				<!ENTITY nonRecursive "&amp;nonRecursive;">]>
			<root name=''{1}''>
				<one>{1}</one>
				<two>&nonRecursive;</two>
			</root>' format: (Array with: references contents)).
	self
		assert: (document root attributeAt: 'name') = replacements contents;
		assert: (document root contentStringAt: 'one') = replacements contents;
		assert: (document root contentStringAt: 'two') = '&nonRecursive;'.