Class {
	#name : #CSSBorderStyleValue,
	#superclass : #CSSValue,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSBorderStyleValue >> isValid [

^#( 'none'
	'hidden'
	'dotted'
	'dashed'
	'solid'
	'double'
	'groove'
	'ridge'
	'inset'
	'outset') includes: self valueString trimBoth

]
