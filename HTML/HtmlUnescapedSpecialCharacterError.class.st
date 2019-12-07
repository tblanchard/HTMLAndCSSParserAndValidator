Class {
	#name : #HtmlUnescapedSpecialCharacterError,
	#superclass : #HtmlSyntaxError,
	#instVars : [
		'position'
	],
	#classVars : [
		'CharactersToEntities',
		'SpecialCharacters'
	],
	#category : #'HTML-DOM-Errors'
}

{ #category : #'as yet unclassified' }
HtmlUnescapedSpecialCharacterError class >> initialize [

	"HtmlUnescapedSpecialCharacterError initialize"

	CharactersToEntities := Dictionary new. 

	CharactersToEntities 
		at: $< put: '&lt;';
		at: $> put: '&gt;';
		at: $& put: '&amp;'.

	SpecialCharacters := CharactersToEntities keys
]

{ #category : #'as yet unclassified' }
HtmlUnescapedSpecialCharacterError class >> specialCharacters [

	^SpecialCharacters
]

{ #category : #accessing }
HtmlUnescapedSpecialCharacterError >> position [

	^position
]

{ #category : #accessing }
HtmlUnescapedSpecialCharacterError >> position: anObject [
	"Set the value of position"

	position := anObject
]

{ #category : #'as yet unclassified' }
HtmlUnescapedSpecialCharacterError >> printOn: aStream [

	| c |

	c := self parent document content at: self position.

	aStream nextPutAll: 'Character: '.
	c asString printOn: aStream.
	aStream nextPutAll: ' should be '.
	aStream nextPutAll: (CharactersToEntities at: c ifAbsent: ['escaped.']).
]
