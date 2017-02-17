accessing
sortBlock	
	^ [:a :b | (self listItems indexOf: a) <= (self listItems indexOf: b)]