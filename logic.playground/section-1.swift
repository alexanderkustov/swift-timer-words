// Playground - noun: a place where people can play

import UIKit

// Typical at 110 - 150 wpm 
// Fast Speaker will work at 145- 160wpm

//Constants
var K_averageWPM = 110
var K_fastWPM = 150
var K_superFastWPM = 160

//Variables for App
var numberOfWordsInText = 550
var numberOfSecondsSpoken = 100

var Sample: String = "It was November. Although it was not yet late, the sky was dark when I turned into Laundress Passage. Father had finished for the day, switched off the shop lights and closed the shutters; but so I would not come home to darkness he had left on the light over the stairs to the flat. Through the glass in the door it cast a foolscap rectangle of paleness onto the wet pavement, and it was while I was standing in that rectangle, about to turn my key in the door, that I first saw the letter. Another white rectangle, it was on the fifth step from the bottom, where I couldn't miss it."

func getWordsFromMinutes(numberOfMinutes:Int) -> Int
{
    numberOfWordsInText = numberOfMinutes*K_averageWPM
    
    return numberOfWordsInText
}

func startCountdown()
{
    
}

func stopCountdown()
{
    numberOfSecondsSpoken = 500
}


func calculateActualWordsSpoken(timeSpokenInSeconds: Int, numberOfWordsSpoken: Int) -> Int
{
var actualWordsPerMinute = numberOfWordsSpoken / timeSpokenInSeconds
    return actualWordsPerMinute
}

var numberOfWords = getWordsFromMinutes(5)
startCountdown()
stopCountdown()
var displayActualWordsPerMinute = calculateActualWordsSpoken(numberOfSecondsSpoken, numberOfWordsInText)