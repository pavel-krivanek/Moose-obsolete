tests
testXMLSplit
	self
		assert: ($: xmlSplit: '') = (OrderedCollection with: '');
		assert: ($: xmlSplit: 'abc') = (OrderedCollection with: 'abc');
		assert: ($: xmlSplit: ':') = #('' '') asOrderedCollection;
		assert: ($: xmlSplit: '::') = #('' '' '') asOrderedCollection;
		assert: ($: xmlSplit: 'a:bc:') = #('a' 'bc' '') asOrderedCollection;
		assert: ($: xmlSplit: ':ab:c:') = #('' 'ab' 'c' '') asOrderedCollection;
		assert: ($: xmlSplit: 'a:bc:') = #('a' 'bc' '') asOrderedCollection;
		assert: ($: xmlSplit: 'ab::cd::ef') = #('ab'  '' 'cd' '' 'ef') asOrderedCollection;
		assert:
			($: xmlSplit: '::ab:::cd:::ef::') =
				#('' '' 'ab'  '' '' 'cd' '' '' 'ef' '' '') asOrderedCollection