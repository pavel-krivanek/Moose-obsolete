actions
generateMseFile: mseFileName forProject: javaProjectPath usingJdt2FamixPath: verveineJPath
	self system:
		('cd ''{1}'' ; sh -c "''{2}''"'
			format:
				{javaProjectPath.
				(verveineJPath asFileReference / 'jdt2famix.sh') fullName})