generated
scan62
	self recordMatch: #(43 54).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	currentCharacter == $a
		ifTrue: [ ^ self scan63 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $b and: $z)
										or: [ ('µæ' includes: currentCharacter)
												or: [ currentCharacter =
														(Character value: 960) ] ] ] ] ] ])
		ifTrue: [ ^ self scan46 ].
	^ self scan62X1