tests
testElementContentModelManyBranches
	| dtd names |

	names := (1 to: 50) collect: [:each | 'element', each printString].
	dtd := String streamContents: [:stream |
		stream
			nextPutAll: '<!DOCTYPE root [';
			nextPutAll: (self elementDeclarationsNamed: names);
			nextPutAll: '<!ELEMENT root ('.
		names
			do: [:each | stream nextPutAll: each]
			separatedBy: [stream nextPut: $|].
		stream nextPutAll: ')>]>'].

	names do: [:each |
		self
			shouldnt: [SAXHandler parse: dtd, '<root><', each, '/></root>']
			raise: XMLValidationException].
	self
		should: [
			SAXHandler parse:
				dtd, '<root><element', (names size + 1) printString, '/></root>']
		raise: XMLValidationException.