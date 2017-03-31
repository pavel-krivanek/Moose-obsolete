tests
testEmbedInMarkupWriter
	(Array
		with: 'one<two/>three'
		with: #('one' nil '<two/>' 'three')
		with: #($o $n $e $< $t $w $o $/ $> nil $t $h $r $e $e)
		with:
			(Array
				with: [:w | w string: 'one']
				with: [:w | w string: '<two/>']
				with: [:w | w string: 'three']
				with: nil))
		do: [:each |
			self assert:
				(XMLWriter writeWith: [:writer |
					writer
						tag: 'test'
						with: each]) = '<test>one&lt;two/&gt;three</test>'].

	self assert:
		(XMLWriter writeWith: [:writer |
			writer
				tag: 'test'
				with: $<]) = '<test>&lt;</test>'.
		
	(Array with: nil with: '' with: #() with: []) do: [:each |
		self assert:
			(XMLWriter writeWith: [:writer |
				writer
					tag: 'test'
					with: each]) = '<test />'].