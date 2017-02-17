token-characters
nameChar
	"[4a]   	NameChar	   ::=   	 NameStartChar | ""-"" | ""."" | [0-9] | #xB7 | [#x0300-#x036F] | [#x203F-#x2040]"

	^ PPPredicateObjectParser on: (PPCharSetPredicate on: [ :char | char = $- or: [ char = $. or: [ char = $: or: [ char = $_ or: [ char isAlphaNumeric ] ] ] ] ]) message: 'name expected'