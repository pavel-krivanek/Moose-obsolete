initialize-release
initialize

	super initialize.
	colorMap := Dictionary new.
	defaultColors := Color distinctTenStrongColors.
	properties := #()