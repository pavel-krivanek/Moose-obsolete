running
testMetamodel
	| metarepo |
	metarepo := self class createMetamodel.
	metarepo elements size should = 19.
	metarepo packages size should = 1.
	metarepo classes size should = 9.
	metarepo properties size should = 9