generated
scan90
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $n
		ifTrue: [ ^ self scan91 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $m)
										or: [ currentCharacter between: $o and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan90X2