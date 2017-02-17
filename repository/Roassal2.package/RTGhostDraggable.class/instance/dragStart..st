announcement handling
dragStart: ann
	ghost := ghostBuilder
		width: ann element width;
		height: ann element height;
		elementOn: self.
	ghost translateTo: ann element position.
	ann element view add: ghost.
	ann element view signalUpdate