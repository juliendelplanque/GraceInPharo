generated
scan71
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan72 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $h)
										or: [ currentCharacter between: $j and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan71X1