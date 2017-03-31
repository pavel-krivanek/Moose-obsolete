whitespaces
water
	^ (#space asParser plus) /  onsideLine  / comment "/ string / line" /  identifier / #any asParser