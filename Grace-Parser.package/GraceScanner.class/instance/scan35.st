generated
scan35
	self recordMatch: #(50).
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self recordMatch: #(50).
			self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self recordMatch: #(50).
					self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self recordMatch: #(50).
							self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan33 ] ] ] ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $/)
						or: [ (currentCharacter between: $: and: $@)
								or: [ (currentCharacter between: $G and: $`)
										or: [ (currentCharacter between: $g and: (Character value: 8231))
												or: [ currentCharacter >= (Character value: 8233) ] ] ] ] ] ])
		ifTrue: [ [ self recordMatch: #(50).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ (currentCharacter
								between: (Character value: 14)
								and: (Character value: 8231))
								or: [ currentCharacter >= (Character value: 8233) ] ] ] ]
				whileTrue ].
	^ self reportLastMatch