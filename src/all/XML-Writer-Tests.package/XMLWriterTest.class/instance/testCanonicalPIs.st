tests
testCanonicalPIs
	| writer |

	(writer := XMLWriter new)
		isCanonical: true.
	writer pi
		target: 'one';
		data: 'one'.
	writer pi target: 'two'.
	writer
		tag: 'three'
		with: [
			writer pi
				target: 'four';
				data: 'four'.
			writer pi target: 'five'.
			writer tag: 'six'.
			writer pi target: 'seven'.
			writer pi
				target: 'eight';
				data: 'eight'].
	writer pi target: 'nine'.
	writer pi
		target: 'ten';
		data: 'ten'.

	self assert:
		writer contents =
			(self onCanonicalLineBreakJoin:
				#('<?one one?>'
					'<?two?>'
					'<three><?four four?><?five?><six></six><?seven?><?eight eight?></three>'
					'<?nine?>'
					'<?ten ten?>')).