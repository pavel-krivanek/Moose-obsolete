grammar-whiteSpace
whiteSpace

	^ (Character space asPParser ) /
	  (Character tab asPParser ) /
	  ((Character value: 12) asPParser ) /
		lineTerminator 