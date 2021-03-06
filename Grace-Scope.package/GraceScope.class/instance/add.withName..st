adding
add: aVariable withName: aName
	| priorDeclaration |
	self assert: (aName isKindOf: String).
	priorDeclaration := names at: aName ifAbsent: [ ^ names at: aName put: aVariable ].
	^ self redeclarationError: 
			('Sorry, you can''t declare `{1}` as a {2}; it''s already declared as a {3} on line {4}, which is in the same scope' 
			format: { 
				aName . aVariable kind . priorDeclaration kind . priorDeclaration startPosition printString }  )
	