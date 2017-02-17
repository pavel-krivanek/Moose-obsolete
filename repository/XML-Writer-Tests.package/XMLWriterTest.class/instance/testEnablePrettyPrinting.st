tests
testEnablePrettyPrinting
	| writer |

	(writer := XMLWriter new)
		enablePrettyPrinting;
		comment: 'an example'.
	writer tag
		name: 'example:user';
		xmlnsAt: 'example' put: 'urn://example';
		with: [
			writer
				tag: 'username' with: [
					writer
						comment: 'id';
						string: 'jsmith'];
				tag: 'real-name' with: [
					writer tag: 'last-name' with: 'Smith'.
					writer string: ', '.
					writer pi
						target: 'type';
						data: 'string'.
					writer
						comment: 'first name';
						string: 'John'];
				tag: 'age' with: [
					writer pi
						target: 'type';
						data: 'integer'.
					writer comment: 'not supplied'];
				tag: 'id' with: [
					writer
						string: '101';
						comment: ''];
				tag: 'contact' with: [
					writer
						tag: 'email';
						string: 'alternate']].

	self assert:
		writer contents =
			(self prettyPrintedLines: #(
				#(0 '<!--an example-->'
					'<example:user xmlns:example="urn://example">')
				#(1 '<username>')
				#(2 '<!--id-->jsmith</username>')
				#(1 '<real-name>')
				#(2 '<last-name>Smith</last-name>, <?type string?><!--first name-->John</real-name>')
				#(1 '<age>')
				#(2 '<?type integer?>'
					'<!--not supplied-->')
				#(1 '</age>'
					'<id>101<!----></id>'
					'<contact>')
				#(2 '<email />alternate</contact>')
				#(0 '</example:user>'))).