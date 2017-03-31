tests
testRedundantWrites
	self assert:
		(XMLWriter writeWith: [:writer |
			writer
				tag: 'report'
				with: [
					(writer tag: 'name')
						with: 'TestName - Report';
						write.
					writer write.
					writer writeWith: [:writer2 |
						(writer2 tag: 'finality')
							with: [
								writer2 comment
									string: 'status';
									write;
									write.
								writer2 string: 'succeed'];
							write.
						writer2 write].
					writer write].
				writer write]) =
			('<report>',
			'<name>TestName - Report</name>',
			'<finality><!--status-->succeed</finality>',
			'</report>')