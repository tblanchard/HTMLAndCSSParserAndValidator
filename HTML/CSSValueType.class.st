Class {
	#name : #CSSValueType,
	#superclass : #Object,
	#category : #'HTML-CSS'
}

{ #category : #'instance creation' }
CSSValueType class >> fromString: aString [

	| in | 

	in := ReadStream on: aString.

	^self readFrom: in.
	
]

{ #category : #'instance creation' }
CSSValueType class >> readFrom: aStream [

	| in val pos operator |

	in := aStream. "in is easier to type"
	val := nil.
	operator := nil.
	pos := -100.	
	[in atEnd] whileFalse:
	[
		in skipSeparators.
		in position = pos ifTrue: [self halt].
		pos := in position.
		(in peek isAlphaNumeric or: [',/' includes: in peek]) ifTrue:
		[
			val isNil 
				ifTrue: [val := CSSValueTypeLiteral readFrom: aStream]
				ifFalse: 
				[
					((val respondsTo: #addType:) and: [val operator = operator])ifFalse: 
					[
						val := CSSValueTypeAND new addType: val.
						operator := val operator.
					].
					val addType: (CSSValueTypeLiteral readFrom: aStream)
				]
		]
		ifFalse:
		[
			in peek = $| ifTrue:
			[
				in next.
				in peek = $| ifTrue:
				[
					in next.
					operator isNil ifTrue:
					[
						val := CSSValueTypeANDOR new addType: val.
						operator := val operator.	
					]
				]
				ifFalse:
				[
					operator isNil ifTrue:
					[
						val := CSSValueTypeOR new addType: val.
						operator := val operator.
					]
				]
			]
			ifFalse:
			[
				in peek = $[ ifTrue:
				[
					in next.
					val isNil 
						ifTrue: [val := self readFrom: in]
						ifFalse: 
						[
							(val respondsTo: #addType:) ifFalse: 
							[
								val := CSSValueTypeAND new addType: val.
								operator = val operator.
							].
							val addType: (self readFrom: in)
						]					
				]
				ifFalse:
				[
					in peek = $] ifTrue:
					[
						in next.
						(CSSValueTypeConstraint allTypes includes: in peek) ifTrue:
						[
							val := (CSSValueTypeConstraint readFrom: in) type: val.
						].
						^val
					]
					ifFalse:
					[
						in peek = $< ifTrue:
						[
							val isNil 
								ifTrue: [val := CSSValueTypeValue readFrom: in]
								ifFalse: 
								[
									(val respondsTo: #addType:) ifFalse: 
									[
										val := CSSValueTypeAND new addType: val.
										operator := val operator.
									].
									val addType: (CSSValueTypeValue readFrom: in)
								]
						]
						ifFalse:
						[
							in peek = $' ifTrue:
							[
								val isNil 
									ifTrue: [val := CSSValueTypeProperty readFrom: in]
									ifFalse: 
									[
										(val respondsTo: #addType:) ifFalse: 
										[
											val := CSSValueTypeAND new addType: val.
											operator := val operator.
										].
										val addType: (CSSValueTypeProperty readFrom: in)
									]				
							]
						]
					]		
				]
			]
		]
	].
	^val
]

{ #category : #testing }
CSSValueType >> addValues: aCollection fromStream: in [

	self subclassResponsibility
]

{ #category : #testing }
CSSValueType >> isTypeAND [


	^false
]

{ #category : #testing }
CSSValueType >> isTypeANDOR [


	^false
]

{ #category : #testing }
CSSValueType >> isTypeOR [


	^false
]

{ #category : #testing }
CSSValueType >> isTypeOneOf [


	^false
]

{ #category : #testing }
CSSValueType >> isTypeOneOrMoreOf [


	^false
]

{ #category : #testing }
CSSValueType >> isValidValue: anObject [

	self subclassResponsibility
]
