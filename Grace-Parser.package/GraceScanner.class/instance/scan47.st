generated
scan47
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $d
		ifTrue: [ ^ self scan48 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $c)
										or: [ currentCharacter between: $e and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan47X1