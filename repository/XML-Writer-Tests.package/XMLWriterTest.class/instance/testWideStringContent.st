tests
testWideStringContent
	| wideStringContent writer |

	wideStringContent :=
		String
			with: 0 asCharacter "the low bound of the escape lookup tables"
			with: 255 asCharacter "the high bound of the escape lookup tables"
			with: 256 asCharacter
			with: 1000 asCharacter.

	writer := XMLWriter new.
	writer doctype
		root: 'test';
		with: [
			writer entityDeclaration
				name: 'test';
				replacement: wideStringContent].
	writer tag
		name: 'test';
		attributeAt: 'test' put: wideStringContent;
		with: wideStringContent.

	self assert:
		writer contents  =
			('<!DOCTYPE test [<!ENTITY test "{1}">]><test test="{1}">{1}</test>'
				format: (Array with: wideStringContent)).