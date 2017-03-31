basic
elementName
	^ (#word asParser star flatten , 
		( $. asParser , #word asParser star flatten ) optional) token trim