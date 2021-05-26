"
Topografia representa la distribucion de agua y tierra de una region cuadrada, la cual esta formada por porciones de “agua” y de “tierra”.
Las proporciones siempre estan entre 0 y 1.
<<Component Composite>>
"
Class {
	#name : #Topografia,
	#superclass : #Object,
	#category : #'TP3-Ej3-Topografia-Model'
}

{ #category : #'instance creation' }
Topografia class >> topografia1: tp1 topografia2: tp2 topografia3: tp3 topografia4: tp4 [

 ^( TopografiaMixta new topografia1: tp1 topografia2: tp2 topografia3: tp3 topografia4: tp4 )
]

{ #category : #comparing }
Topografia >> = aTopografia [

 ^( self proporcionDeAgua = aTopografia proporcionDeAgua ) & 
		( self proporcionDeTierra  = aTopografia proporcionDeTierra ) &
				( self distribucion = aTopografia distribucion )
]

{ #category : #'private - accessing' }
Topografia >> distribucion [
	^ self subclassResponsibility
]

{ #category : #accesing }
Topografia >> proporcionDeAgua [
	^ self subclassResponsibility
]

{ #category : #accesing }
Topografia >> proporcionDeTierra [
	^ self subclassResponsibility
]
