tests
testLineBreak
	(Array
		with: String crlf
		with: $N
		with: '')
		do: [:each | | writer |
			(writer := XMLWriter new)
				enablePrettyPrinting;
				lineBreak: each.
			writer
				xml;
				tag: 'test'.
			self assert:
				writer contents =
					(self
						onLineBreak: each
						join:
							#('<?xml version="1.0"?>'
								'<test />'))]