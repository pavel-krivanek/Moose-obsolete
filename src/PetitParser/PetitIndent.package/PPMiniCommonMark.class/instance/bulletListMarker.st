lists
bulletListMarker
	^ 
	  ($- asParser /
		$* asParser /
		$+ asParser) 
		
	==> [ :e | 'ul' ]