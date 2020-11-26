# Wavy

A directory of terrestrial radio stations.

## Usage:

```swift
import Wavy

let aStation = Market.knoxville.stations.first! /// `\.stations` is `Set<RadioStation>`
let callLetters = aStation[\.callLetters]
let frequency = aStation[\.frequency]!.description

print("\(callLetters) \(frequency)") /// prints "WUOT 91.9 FM"

```
