running
testBuildFM3
	| processor all |
	processor := FMPragmaProcessor new.
	processor buildFM3.	"There are some elements."
	processor elements isEmpty should beFalse.	"There is one and only one package."
	all := processor packages.
	all size should = 1.
	all anyOne name should = #FM3	"We do not test more here, please refer to FMMetaRepositoryTest for more FM3 tests..."