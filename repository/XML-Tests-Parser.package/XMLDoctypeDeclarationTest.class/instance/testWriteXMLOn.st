tests
testWriteXMLOn
	| doctype elementDeclaration |

	doctype := self newNode.
	self assert: doctype printString = '<!DOCTYPE >'.
	doctype root: 'one'.
	self assert: doctype printString = '<!DOCTYPE one>'.
	doctype publicID: 'two'.
	self assert: doctype printString = '<!DOCTYPE one PUBLIC "two" "">'.
	doctype systemID: 'three'.
	self assert: doctype printString = '<!DOCTYPE one PUBLIC "two" "three">'.

	elementDeclaration := XMLElementDeclaration element: 'four' contentModel: '(five|six)'.
	doctype addNode: elementDeclaration.
	self assert:
		doctype printString =
			('<!DOCTYPE one PUBLIC "two" "three" [', elementDeclaration printString, ']>').

	self assert:
		(self nodeClass root: 'one' publicID: '' systemID: 'two') printString =
			'<!DOCTYPE one SYSTEM "two">'.