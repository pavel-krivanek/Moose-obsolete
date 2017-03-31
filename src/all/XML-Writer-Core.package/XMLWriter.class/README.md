XMLWriter generates well-formed XML documents using an API similar to Seaside's canvas and tag brushes.

Markup can be created with the messages under "writing." The ones that take no arguments return instances of XMLMarkupWriter subclasses that can be configured with messages like #name: or #attributeAt:put:. Sending them #write or #with: (if they can have embedded markup) causes the markup writer's configuration to be committed and its markup to be written.

For markup writers that can have embedded markup, the argument to #with: can be a string, a block, a collection (of strings and blocks), or nil. A block can optionally take an argument, the XMLWriter. Creating additional markup will cause any unwritten markup from a previous markup writer to be written, as will sending #write, #contents, #printOn:, #asString, or #close.

Here is an example (evaluate with cmd-p):
	| writer |
	writer := XMLWriter new.
	writer
		enablePrettyPrinting;
		xml;
		comment: 'an example'.
	writer tag
		name: 'example:user';
		xmlnsAt: 'example' put: 'urn://example';
		with: [
			writer
				tag: 'username' with: 'jsmith';
				tag: 'real-name' with: 'John Smith';
				tag: 'age' with: '25';
				tag: 'id' with: '101']

If the last message sent isn't a writing message like #with: or #tag:with:, you may need to send #write to force writing any unwritten markup:
	String streamContents: [:stream |
		(XMLWriter on: stream)
			tag: 'first';
			tag: 'second';
			write].

The second tag forces the first to be written, but the second wouldn't be written if #write wasn't sent.

The #writeWith: message evaluates a block and automatically sends #write after, like how #fileNamed:do: automatically sends #close after:
	String streamContents: [:stream |
		(XMLWriter  on: stream)
			writeWith: [:writer |
				writer
					tag: 'first'
					with: [writer tag: 'second'].
				writer tag: 'third']].