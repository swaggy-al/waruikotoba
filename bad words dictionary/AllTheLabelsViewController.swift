//
//  AllTheLabelsViewController.swift
//  bad words dictionary
//
//  Created by A. Yes on 11/10/2018.
//  Copyright © 2018 A. Yes. All rights reserved.
//

import UIKit
import GoogleMobileAds

class AllTheLabelsViewController: UIViewController {
    
    var randomTextIndex = 0
    
    let japaneseNewArray = ["チンカス", "ボケ", "アホ", "バカ", "アホンダレ", "ハゲ", "ボケナス", "ドアホ", "あばずれ", "キチガイ", "くたばれ", "ノールス(脳が留守)", "ゴミ", "デブ", "クズ", "あんぽんたん", "変態", "ボンクラ", "単細胞", "間抜け", "スットコドッコイ", "カス", "死ね", "トンチンカン", "偽善者", "腰抜け", "能無し", "貴様", "てめえ", "しつけえんだよ", "大嫌い", "なんだと!?", "どけ", "クソ喰らえ", "うっせえんだよ", "使えねえ奴だな", "でべそ", "ホラ吹き", "キモヲタ", "オタク", "ブス", "マザコン", "ヤリマン/ヤリチン", "くせえんだよ", "地獄に落ちろ", "ほっとけ", "のろま", "へなちょこ", "ドインポ", "ふしだら", "けち", "ロリコン", "ショタコン", "生理的に無理", "ドブネズミ", "役立たず", "くそアマ", "ブタゴリラ", "筋肉バカ", "消えて", "気取り屋", "ナルシ", "変人", "ダサい", "最悪", "黙れ", "腐れ", "黒まんこ", "たわけ", "外道", "うんこ", "このやろう", "ウスラトンカチ", "おたんこなす", "インチキ", "おっちょこちょい", "分からず屋", "シブチン", "毒舌", "厚かましい", "エゴイスト", "ぐうたら", "へそ曲がり", "人でなし", "負け犬", "泥棒猫", "極道", "えげつない", "いかさま", "浮気者", "トンマ", "出来損ない", "畜生", "根性無し", "おぼっちゃま", "大根足", "ジジイ", "ババア", "チビ"]
    
    let translationNewArray = ["Dick Cheese/Smegma", "Airhead", "Idiot", "Stupid", "Dumbass", "Baldie", "Airhead / Idiot", "Big Idiot", "Whore/Slut", "Retard", "Die / Get Lost", "Dumb / Empty Brained", "Scum", "Fatass", "Trash / Useless", "Nitwit / Idiot", "Pervert", "Blockhead / Idiot", "Simpleton / Unintelligent", "Stupid", "Brainless Idiot", "Scum / Trash", "Die / Get Lost", "Absurd / Idiotic", "Hypocrite", "Coward / Pussy ", "Brainless", "You (Deragetory)", "You (Deragetory)", "Annoying Piece of Shit", "I Hate You", "What the fuck did you say?", "Move", "Eat Shit", "Shut Up", "You’re Useless", "Outie Belly Button", "Liar", "Ugly Nerd", "Nerd", "Ugly Ass", "Momma’s Boy", "Man Whore /Slut", "You Smell Like Shit", "Go To Hell", "Leave Me Alone", "Slow Poke / Tard", "Lame Ass", "Extreme ED", "Slut", "Stingy", "Pedophile", "Pedophile", "Literally cannot with your presence", "Dirty Rat", "Useless", "Bitch", "Pig-Gorilla (Ugly ass)", "Meat Head", "Die / Get Lost", "Poseur", "Narcississt", "Weirdo", "Tasteless / Wack", "The Worst", "Shut The Fuck Up", "Rot in Hell", "Black pussy", "Fool", "Bastard", "Poop", "This Asshole", "Stupid / Dumbwit", "Fool / Idiot", "Cheat", "Clumsy", "Dumb / Unintelligent / not Understanding", "Stingy", "Mean / Harsh", "Annoying / Impudent", "Egoist", "Bum / Lazy / Couch Potato", "Perverse", "Inhumane", "Loser", "Robber / One who steals", "Mob / Yakuza", "Disgusting / Nasty", "Cheat", "Cheater (Spouse)", "Stupid / Asshole", "Worthless / Useless", "Shit", "Coward / Pussy", "Spoiled Brat", "Thunder Thighs", "Old Man", "Old Hag", "Midget / Short"]
    
    let pronunciationNewArray = ["Chinkasu", "Boké", "Aho", "Baka", "Ahondaré", "Hagé", "Boké-nasu", "Do Aho", "Abazuré", "Kichigai", "Kutabaré", "Nou-Rusu", "Gomi", "Debu", "Kuzu", "An-pon-tan", "Hentai", "Bonkura", "Tansaibou", "Manuké", "Suttoko Dokkoi", "Kasu", "Shiné", "Ton-chin-kan", "Gizen-sha", "Koshi-nuké", "Nou-nashi", "Kisama", "Temée", "Shitsu-koin-dayo", "Dai-kirai", "Nan-Dato?", "Doké", "Kuso-kuraé", "Usséen-Dayo", "Tsukae-née-yatsu-dana", "Débéso", "Hora-Fuki", "Kimo-Ota", "Otaku", "Busu", "Maza-Kon", "Yari-man / Yari-chin", "Kuséen-Dayo", "Jigoku-ni-ochiro", "Hottoké", "Noroma", "Hena-choko", "Do-Inpo", "Fushi-dara", "Kechi", "Rori-con", "Shota-kon", "Seiri-tekini-muri", "Dobu-Nezumi", "Yaku-Tata-Zu", "Kuso-Ama", "Buta-Gorira", "Kin-Niku-Baka", "Kiété", "Kidori-Ya", "Narushi", "Henjin", "Dasai", "Sai-Aku", "Damare", "Kusare", "Kuro-Manko", "Tawaké", "Gé-Dou", "Unko", "Kono-Yarou", "Usura-Tonkachi", "Otanko-Nasu", "Inchiki", "Occhoko-Choi", "Wakarazu-Ya", "Shibu-Chin", "Doku-Zetsu", "Atsukama-Shii", "Égo-Isuto", "Guu-Tara", "Heso-Magari", "Hito-Dé-Nashi", "Maké-Inu", "Dorobou-Neko", "Goku-Dou", "Égétsu-Nai", "Ika-Sama", "Uwaki-Mono", "Ton-Ma", "Deki-Zoko-Nai", "Chiku-Shou", "Konjyou-Nashi", "Obocchama", "Dai-Kon-Ashi", "Ji-Jii", "Ba-Baa", "Chibi"]
    
    let sentenceNewArray = ["ふざけんなチンカス！", "ちんたらしてんじゃねえよボケ！", "アホかお前は", "死ねバカ", "頭悪過ぎなんだよこのアホンダレ", "テカりが眩しいんじゃハゲ", "お釣り返せやボケナス", "何回言われせるんだこのドアホ！", "あのアバズレ、軽く１０００人はやってるらしいぜ", "味噌汁にコーン入れるキチガイw", "早くくたばれよババア", "こっち来んな脳留守", "オマエはただのゴミなんだよ", "掛かってこいよデブ", "人間としてクズだな", "アンパ◯マン知らないあんぽんたんはお前か", "あの変態俺のチンコ触りやがった", "何回間違えてんだよボンクラ", "アイツみたいな単細胞には絶対出来ない仕事だよな", "俺の彼女ちょっと間抜けなんだよね", "母ちゃんと似てスットコドッコイだな", "黙れカス", "死ねハゲ", "あのトンチンカン早くクビにしようぜ", "人助けのふりしてしてモテようとしてんじゃねぇよ、偽善者！", "オマエはただの腰抜けなんだよ", "能無しは引っ込んでろ", "貴様殺すぞ", "テメエは黙ってろ", "しつこいんだよのこのウンカス", "浮気したんでしょ？！あんたなんて大嫌い", "何だとこの野郎？！?", "道ふさいでんじゃねえよデブ、どけ！", "糞食らえジジイ", "お前の女うっせーんだよ", "だから資料は全員分って言っただろうが、使えない奴だな。", "お前の母ちゃんデ〜ベ〜ソ〜", "信じねえよ、お前みたいなホラ吹きは", "お前みたいなキモオタは秋葉原でアイドルのケツでも追ってろ", "アニメのキャラの抱き枕を自作したらしいぜ、あのオタク", "あんなブスと付き合ってんの？", "あんなマザコン、一生独身だろ。", "あのヤリマンは性病をまるでポケモンみたいに集めてるらしいぜ", "シャワー浴びろよ、臭えーんだよ", "地獄に落ちろ浮気者", "アイツみたいなアホはほっとけ", "もっと早く歩けよ、ノロマだなー", "あんなヘナチョコ一発でKOだぜ", "ドインポのくせに女口説いてんじゃねぇよ", "あのフシダラのマンコめっちゃ臭いらしいぜ", "５０円くらい貸せよケチ", "ロリコンは世界のキモイランキングでもトップスリーには入ると思う", "ショタコンはまじキモス", "顔がもうだめ、生理的に無理", "お前は美しくなれなかった方のドブネズミだな", "黙って俺のカバン持ってろ、役立たずが", "うるせぇ、くそアマ！黙れ！", "うわ、やばい。あの女完全にブタゴリラじゃん", "ちょっとは頭使えよ筋肉バカ", "もういいからこの世から消えて", "学校にピアスして来んじゃねえよ、気取り屋が", "あのナルシ、一日中自分の顔ばかり見てやがるぜ", "あいついつも一人でにやけてんだぜ。変人だよな", "あいつ、自分のことオシャレだと思ってるけど超ダサいよな", "メールで振る人本当最悪", "うるせぇんじゃ、黙れ", "お前みたいなクズは地獄で腐ってろ", "あの黒マンコ百人斬りしたらしいぜ", "たわけが！さっさと仕事終わらしちまえ！", "お前そんなことしていいのかよ、外道が！", "オメェまじうんこだな。", "このやろう、ふざけんじゃねぇぞ、おい！", "何やってもダメだな、このウスラトンカチが！", "あいつはダメだな。生粋のおたんこなすだ。", "あいつホントせこいよな。インチキ野郎が", "よく飲み物こぼしたり、こけたり。ホントにおっちょこちょいだなぁ", "何度言ってもわからないとか分からず屋の域も超えてるわ。", "あのシブチン、一回も金出すの見たことないぜ。", "毒舌も度が過ぎるとただの悪口だからね。", "いつでもどこでも大声で喋るんだぜあいつ。厚かましいよな", "自分のことしか考えないエゴイストとは付き合いきれないわ。", "ぐうたらプー太郎はだいたいニート", "ちょっと文句言ったらヘソ曲げてやんの。根性なしだな。", "味噌汁にコーン入れるやつがいるか！人でなしがっ！", "勝ちを見たことのない人より、そのような人を馬鹿にする人が負け犬", "どうやら、会社からペンとか紙とか盗ってる泥棒猫がいるようだな", "極道の人と絡むと厄介なことになる場合がございます", "あの女えげつないほどパイオツカイデーだかんね", "たまには正々堂々とやってみろよいかさまインポやろうが", "浮気を積極的に否定する奴は大体浮気者", "あいついつもトンマやって怒られてるんだよな。ださっ", "一回でいいからミスなく仕事をこなしてくれよ、出来損ないが", "畜生、俺のケツ触りやがったな", "いいから素直に面と向かって気持ち伝えろよ根性なしめ", "世間を知らないおぼっちゃまは家で一生待機願う", "あの子顔はいいけど大根足だからなしだな", "どけよジジイ、邪魔なんだよ！", "「こんなまずい飯食えるかババア！」は反抗期初日に言う言葉", "ごめん、視界にも入ってなかったわ、チビ"]
    
    @IBOutlet weak var ad3: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GADMobileAds.configure(withApplicationID: "ca-app-pub-3940256099942544/2934735716")
        
        self.ad3.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        self.ad3.rootViewController = self
        
        ad3.load(GADRequest())
        
        updateLabels()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var japanese: UILabel!
    
    @IBOutlet weak var pronuciation: UILabel!
    
    @IBOutlet weak var translation: UILabel!
    
    @IBOutlet weak var sentence: UILabel!
    
    @IBAction func generate(_ sender: UIButton) {
        
        updateLabels()
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func updateLabels() {
        
        randomTextIndex = Int(arc4random_uniform(UInt32(japaneseNewArray.count)))
        
        japanese.text = japaneseNewArray[randomTextIndex]
        translation.text = translationNewArray[randomTextIndex]
        pronuciation.text = pronunciationNewArray[randomTextIndex]
        sentence.text = sentenceNewArray[randomTextIndex]
    }
    
}
