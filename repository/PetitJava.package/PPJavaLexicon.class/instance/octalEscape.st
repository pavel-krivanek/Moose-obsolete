grammar-literals-escape
octalEscape

	^ $\ asPParser , ( (zeroToThree , octalDigit , octalDigit) / (octalDigit , octalDigit optional) )