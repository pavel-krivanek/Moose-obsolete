accessing
name
"This override is here to make stub usable for tests. In tests we substitute real system class GHClassStub. And it should have #name method working properly. So this method is here to skip all proxy mechanics. it just return ready to use name"

	^'a ', GHClassGhostStub name