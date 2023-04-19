
// Xcode playground 練習 AttributedString
//import UIKit
//
//var testContent = AttributedString()
//var singerName = AttributedString("草東沒有派對")
//singerName.font = .boldSystemFont(ofSize: 20)
//singerName.foregroundColor = .black
//testContent = testContent + singerName
//
//var musicTitle =  AttributedString("\n爛泥")
//musicTitle.font = .italicSystemFont(ofSize: 30)
//musicTitle.foregroundColor = .gray
//testContent = testContent + musicTitle
//
//var lyrics = AttributedString("\n我想要說的 前人們都說過了\n我想要做的 有錢人都做過了\n我想要的公平都是不公們虛構的")
//lyrics.font = .systemFont(ofSize: 15)
//lyrics.foregroundColor = .darkGray
//lyrics.backgroundColor = .systemGray3
//let paragraphStyle = NSMutableParagraphStyle()
//paragraphStyle.lineSpacing = 6
//paragraphStyle.alignment = .center
//lyrics.paragraphStyle = paragraphStyle
//testContent = testContent + lyrics
//
//let musicLabel = UILabel()
//musicLabel.attributedText = NSAttributedString(testContent)
//musicLabel.numberOfLines = 0
//
//let viewSize = musicLabel.sizeThatFits(CGSize(width: 300, height: 0))
//musicLabel.frame.size = viewSize
//musicLabel.backgroundColor = .white
//
//musicLabel


import UIKit

var testContent = AttributedString()

var singerName = AttributedString("草東沒有派對")
singerName.font = .boldSystemFont(ofSize: 20)
singerName.foregroundColor = .black
let singerNameParagraphStyle = NSMutableParagraphStyle()
singerNameParagraphStyle.alignment = .center
singerName.paragraphStyle = singerNameParagraphStyle
testContent = testContent + singerName

var musicTitle =  AttributedString("\n爛泥")     // 也有括弧但他是struct 裡面會有 其屬性、方法
musicTitle.font = .italicSystemFont(ofSize: 30) // 也有括弧但他是 UIFont 結構（型別）裡面的方法 。 而 .font 則是 AttributedString 結構裡的屬性。
musicTitle.foregroundColor = .red
let musicTitleParagraphStyle = NSMutableParagraphStyle()
musicTitleParagraphStyle.alignment = .center
musicTitle.paragraphStyle = musicTitleParagraphStyle
testContent = testContent + musicTitle

var lyrics = AttributedString("\n我想要說的 前人們都說過了\n我想要做的 有錢人都做過了\n我想要的公平都是不公們虛構的")
lyrics.font = .systemFont(ofSize: 15)
lyrics.foregroundColor = .black
lyrics.backgroundColor = .systemGray3
let lyricsParagraphStyle = NSMutableParagraphStyle() // 透過NSMutableParagraphStyle類別，可以使用lineSpacing、alignment的屬性
lyricsParagraphStyle.lineSpacing = 8
lyricsParagraphStyle.alignment = .center
lyrics.paragraphStyle = lyricsParagraphStyle
testContent = testContent + lyrics

let musicLabel = UILabel()
musicLabel.attributedText = NSAttributedString(testContent) // 為了運用NSAttributedString類別的屬性，，因此將具有 AttributedString類別的 testContent 帶入到 NSAttributedString類別
musicLabel.numberOfLines = 0
let viewSize = musicLabel.sizeThatFits(CGSize(width: 300, height: 0)) //sizeThatFits 是 UILabel 類別的方法
musicLabel.frame.size = viewSize
musicLabel.backgroundColor = .white

musicLabel



