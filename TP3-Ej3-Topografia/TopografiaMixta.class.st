"
Topografia mixta <<Composite Composite>>
"
Class {
	#name : #TopografiaMixta,
	#superclass : #Topografia,
	#instVars : [
		'topografia1',
		'topografia2',
		'topografia3',
		'topografia4',
		'componentes'
	],
	#category : #'TP3-Ej3-Topografia-Model'
}

{ #category : #'private - accessing' }
TopografiaMixta >> distribucion [
	^ '{ ' , (componentes at: 1) distribucion , ' '
		, (componentes at: 2) distribucion , ' '
		, (componentes at: 3) distribucion , ' '
		, (componentes at: 4) distribucion , ' }'
]

{ #category : #initialization }
TopografiaMixta >> initialize [
	componentes := OrderedCollection ofSize: 4
]

{ #category : #initialization }
TopografiaMixta >> initialize: coleccionDeTopografias [
	componentes := coleccionDeTopografias
]

{ #category : #accesing }
TopografiaMixta >> proporcionDeAgua [
	^ (componentes sumNumbers: [ :each | each proporcionDeAgua ]) / 4
]

{ #category : #accesing }
TopografiaMixta >> proporcionDeTierra [
	^ (componentes sumNumbers: [ :each | each proporcionDeTierra ]) / 4
]
