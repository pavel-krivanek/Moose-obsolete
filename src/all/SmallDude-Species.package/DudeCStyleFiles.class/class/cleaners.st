parsing
cleaners 
	 
	^DudeCommentsCleaner new next: (DudeNoiseCleaner new next: super cleaners)