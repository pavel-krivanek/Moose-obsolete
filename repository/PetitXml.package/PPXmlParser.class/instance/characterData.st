grammar-character
characterData
	^ super characterData ==> [ :nodes | PPXmlText data: nodes ]