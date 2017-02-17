running
testPropertyClass
	| meta prop |
	meta := FM3MetaDescription new.
	prop := FM3PropertyDescription new.
	meta attributes notNil should beTrue.
	meta attributes isCollection should beTrue.
	prop mmClass isNil should beTrue.
	prop mmClass: meta.
	meta attributes size should = 1.
	meta attributes anyOne should = prop.
	prop mmClass should = meta