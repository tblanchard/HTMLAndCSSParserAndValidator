Class {
	#name : #CSSIntegerValue,
	#superclass : #CSSValue,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSIntegerValue class >> readFrom: in [

	| out |
	out := WriteStream on: String new.
	('-+' includes: in peek) ifTrue: [out nextPut: in next].
	[in atEnd not and: [in peek isDigit]] whileTrue: [out nextPut: in next].
	^self new valueString: out contents 
]

{ #category : #'as yet unclassified' }
CSSIntegerValue >> isValid [

	| str |

	str := ('+-' includes: valueString first)
		ifTrue: [valueString copyWithoutFirst]
		ifFalse:[valueString].

	^(str detect:[:ea | ea isDigit not] ifNone:[nil]) isNil
]

{ #category : #'as yet unclassified' }
CSSIntegerValue >> value [

	^self isValid ifTrue: [valueString asNumber] ifFalse: [nil]
]
