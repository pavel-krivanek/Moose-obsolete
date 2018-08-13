tests
testIsWordLayouts

	self assert: (RGWordLayout unnamed isWordLayout).
	self deny: (RGEmptyLayout unnamed isWordLayout).
	