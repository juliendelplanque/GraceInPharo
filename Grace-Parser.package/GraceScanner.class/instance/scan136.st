generated
scan136
	self recordMatch: #(43 53).
	self step.
	currentCharacter == $i
		ifTrue: [ ^ self scan137 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $h)
										or: [ (currentCharacter between: $j and: $z)
												or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan136X2