token-characters
nameStartChar
	"[4]   	NameStartChar	   ::=   	"":"" | [A-Z] | ""_"" | [a-z] | [#xC0-#xD6] | [#xD8-#xF6] | [#xF8-#x2FF] | [#x370-#x37D] | [#x37F-#x1FFF] | [#x200C-#x200D] | [#x2070-#x218F] | [#x2C00-#x2FEF] | [#x3001-#xD7FF] | [#xF900-#xFDCF] | [#xFDF0-#xFFFD] | [#x10000-#xEFFFF]"

	^ PPPredicateObjectParser on: (PPCharSetPredicate on: [ :char | char = $: or: [ char = $_ or: [ char isLetter ] ] ]) message: 'name expected'