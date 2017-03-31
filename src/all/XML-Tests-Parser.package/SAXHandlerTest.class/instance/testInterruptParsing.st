tests
testInterruptParsing
	| uniqueSelectors parser |

	uniqueSelectors := OrderedCollection new.
	self prefixedXMLSourcePrefixURILocalNameSelectors do: [:each |
		(uniqueSelectors includes: each)
			ifFalse: [uniqueSelectors addLast: each]].
	uniqueSelectors do: [:each |
		(parser :=
			SAXInterruptingRecordingPrefixURILocalNameHandler on:
				self prefixedXMLSource)
			interruptOn: each;
			parseDocument.
		self assert:
			(parser wasSentSelectors:
				((self prefixedXMLSourcePrefixURILocalNameSelectors copyUpTo: each) copyWith: each))].