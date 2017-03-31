spec
ns_plain_char
	^ 	(($: asParser not, $# asParser not, ns_plain_safe) ==> #third) / 
		( ns_char preceeds, $# asParser) / 
		(( $: asParser, ns_plain_safe and) ==> #first)