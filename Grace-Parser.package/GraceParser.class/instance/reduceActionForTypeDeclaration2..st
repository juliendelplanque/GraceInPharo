generated-reduction actions
reduceActionForTypeDeclaration2: nodes
	| result |
	result := GraceTypeDeclarationNode new.
	result typeToken: (nodes at: 1).
	result id: (nodes at: 2).
	result equalToken: (nodes at: 3).
	result value: (nodes at: 4).
	^ result