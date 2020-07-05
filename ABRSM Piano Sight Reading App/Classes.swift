//
//  Classes.swift
//  ABRSM Piano Sight Reading App
//
//  Created by Dejan Tomic on 13/05/2019.
//  Copyright © 2019 Dejan Tomic. All rights reserved.
//

import Foundation


/// Generic sheet music class

class SheetMusic {
    var SheetMusicName = String()
    var SheetMusicImage = String()
    var Tempo = String()
    var Grade = Int()
    var KeySignature = String()
    var TimeSignature = String()
}

// Grade 1 Sheet music
class AndanteSheetMusic {
    var SheetMusicName = "Andante"
    let SheetMusicImage = "AndanteGrade1"
    var Tempo = "Andante"
    let Grade = 1
    var KeySignature = "C Major"
    var TimeSignature = "4/4"

}
