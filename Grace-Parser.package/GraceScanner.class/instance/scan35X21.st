generated
scan35X21
	self recordMatch: #(9 44).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan37 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $z)
						or: [ currentCharacter >= $| ] ] ])
		ifTrue: [ ^ self scan36 ].
	^ self reportLastMatch