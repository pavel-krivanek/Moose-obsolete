tests
testCanonicalComments
	| writer |

	(writer := XMLWriter new)
		isCanonical: true;
		comment: 'one';
		comment: 'two'.
	writer
		tag: 'three'
		with: [
			writer
				comment: 'four';
				comment: 'five';
				tag: 'six';
				comment: 'seven';
				comment: 'eight'].
	writer
		comment: 'nine';
		comment: 'ten'.

	self assert:
		writer contents =
			(self onCanonicalLineBreakJoin:
				#('<!--one-->'
					'<!--two-->'
					'<three><!--four--><!--five--><six></six><!--seven--><!--eight--></three>'
					'<!--nine-->'
					'<!--ten-->')).