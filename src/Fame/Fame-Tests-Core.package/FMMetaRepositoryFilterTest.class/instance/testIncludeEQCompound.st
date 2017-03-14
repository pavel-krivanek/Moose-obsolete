test-include-fameexamples
testIncludeEQCompound

	| repo names visitor |
	
	visitor := FMMetaRepositoryFilter new
		metaRepository: eqModel;
		classes: {eqModel descriptionOf: EQCompound}.
	visitor run.

	repo := visitor newMetaRepository.
	names := repo elements collect: #fullName.
	names should include: 'EQ'.
	names should include: 'EQ.Expression'.
	names should include: 'EQ.Operator'.
	names should include: 'EQ.Expression'.
	names should include: 'EQ.Identifier'.
	names should include: 'EQ.Compound'.
	names should include: 'EQ.Simple'.
	names should include: 'EQ.Numerical'.
	names should include: 'EQ.Variable'.
	
	names should not include: 'EQ.EquationSystem'.