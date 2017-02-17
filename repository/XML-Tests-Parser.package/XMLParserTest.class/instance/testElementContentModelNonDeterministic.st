tests
testElementContentModelNonDeterministic
	| template |
	
	template :=
		'<!DOCTYPE a [
			<!ELEMENT a {1}>
			<!ELEMENT b EMPTY>
			<!ELEMENT c EMPTY>
			<!ELEMENT d EMPTY>
		]>{2}'.

	#(#('((b,c)|(b,d))' '(b,(c|d))' '<a><b/><c/></a>')
		#('(b?,b*)' '(b,b*)' '<a><b/></a>')
		#('(b+,b?)' '(b,b+)' '<a><b/><b/></a>')
		) do: [:each | | nonDeterministic deterministic source |
		nonDeterministic := each first.
		deterministic := each second.
		source := each third.
		self
			should: [
				SAXHandler parse:
					(template format: (Array with: nonDeterministic with: source))]
			raise: XMLValidationException.
		self
			shouldnt: [
				SAXHandler parse:
					(template format: (Array with: deterministic with: source))]
			raise: XMLValidationException].