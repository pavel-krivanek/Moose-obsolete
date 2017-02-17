internal
resolveMyIds: idDict
	#(#fill #stroke #xlink_href) 
		do: [ :each | self resolveIdForAttribute: each dict: idDict ]