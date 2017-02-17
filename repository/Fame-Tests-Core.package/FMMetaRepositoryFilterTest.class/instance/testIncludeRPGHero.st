test-include-fameexamples
testIncludeRPGHero

	| repo names visitor |
	
	visitor := FMMetaRepositoryFilter new
		metaRepository: rpgModel;
		classes: {rpgModel descriptionOf: RPGHero}.
	visitor run.

	repo := visitor newMetaRepository.
	names := repo elements collect: #fullName.
	names should include: 'RPG'.
	names should include: 'RPG.Dragon'.
	names should include: 'RPG.Hero'.
	names should include: 'RPG.Treasure'.