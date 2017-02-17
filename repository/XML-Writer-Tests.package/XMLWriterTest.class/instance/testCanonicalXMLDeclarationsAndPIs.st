tests
testCanonicalXMLDeclarationsAndPIs
	| writer |

	(writer := XMLWriter new)
		isCanonical: true;
		xml;
		comment: 'start of pi'.
	writer pi
		target: 'pi';
		data: 'preserved'.
	writer
		comment: 'end of pi';
		tag: 'empty'.

	self assert:
		writer contents =
			(self onCanonicalLineBreakJoin:
				#('<!--start of pi-->'
					'<?pi preserved?>'
					'<!--end of pi-->'
					'<empty></empty>')).