[hidemenubutton]
[cm]
[clearfix]
[freeimage layer="base"]
[stop_keyconfig]
[bg  storage="dining.png"  time="1000"]

;テスト用好感度変数
[eval exp="f.satoru_to_saya_like = 80"]
[eval exp="f.satoru_to_onohara_like = 80"]
[eval exp="f.satoru_to_megumi_like = 80"]
[eval exp="f.satoru_to_miki_like = 80"]

[eval exp="f.saya_to_satoru_like = 60"]
[eval exp="f.saya_to_onohara_like = 60"]
[eval exp="f.saya_to_megumi_like = 60"]
[eval exp="f.saya_to_miki_like = 60"]

[eval exp="f.onohara_to_satoru_like = 40"]
[eval exp="f.onohara_to_saya_like = 40"]
[eval exp="f.onohara_to_megumi_like = 40"]
[eval exp="f.onohara_to_miki_like = 40"]

[eval exp="f.megumi_to_satoru_like = 20"]
[eval exp="f.megumi_to_saya_like = 20"]
[eval exp="f.megumi_to_onohara_like = 20"]
[eval exp="f.megumi_to_miki_like = 20"]

[eval exp="f.miki_to_satoru_like = 0"]
[eval exp="f.miki_to_saya_like = 0"]
[eval exp="f.miki_to_onohara_like = 0"]
[eval exp="f.miki_to_megumi_like = 0"]

;変数設定用マクロ
[call storage="script/Variables_Set.ks"]

[html]
<head>

;css読み込み
<link rel="stylesheet" href="./data/scenario/css/style.css">

;div要素書き換え呼び出し
<script src="./data/scenario/script/Re_Write.js"></script>

;html要素、表示非表示js呼び出し
<script src="./data/scenario/script/Display.js"></script>

</head>
[endhtml]

;画面生成
[html name=screen]

<div id="test"></div>

;日付
;<div id="data_now" class="data-now">

;</div>

;ステータス
;<div id="status" class="status-box">
;</div>

;好感度スライドメニュー
    <input type="checkbox" id="menu-toggle">

    ;ラベル名　押すとスライドメニュー出現
    <label class="btn-menu" for="menu-toggle">好感度</label>

    <nav id="slied_box" class="slied-box" >

        ;タブメニュー
        <div class="tab">
        
        ;主人公から各キャラへの好感度
        <input id="menu1" class="tab-input" name="menu" type="radio" checked="checked">
        <label for="menu1" class="tab-item" id="satoru_menu">主人公</label>

            <div class="tab-content">
                <div class="like">

                    <div class="like-box">

                        <div id="satoru_saya_like" class="like-num"></div>

                        <div class="chara-icon">
                            <img id="icon" src="./data/fgimage/icon/saya_icon.png" >
                        </div>
                        
                        <meter id="satoru_to_saya_meter" min="0" max="100" value=""></meter>

                    </div>

                    <div class="like-box">

                        <div id="satoru_onohara_like" class="like-num">20</div>

                        <div class="chara-icon">
                            <img id="icon" src="./data/fgimage/icon/onohara_icon.png" >
                        </div>
                        
                        <meter id="satoru_to_onohara_meter" min="0" max="100" value="20"></meter>

                    </div>

                    <div class="like-box">

                        <div id="satoru_megumi_like" class="like-num">20</div>

                        <div class="chara-icon">
                            <img id="icon" src="./data/fgimage/icon/megumi_icon.png" >
                        </div>
                        
                        <meter id="satoru_to_megumi_meter" min="0" max="100" value="20"></meter>

                    </div>

                    <div class="like-box">

                        <div id="satoru_miki_like" class="like-num">20</div>

                        <div class="chara-icon">
                            <img id="icon" src="./data/fgimage/icon/miki_icon.png" >
                        </div>
                        
                        <meter id="satoru_to_miki_meter" min="0" max="100" value="20"></meter>

                    </div>

                </div> 
            </div>

        ;さやから各キャラへの好感度
        <input id="menu2" class="tab-input" name="menu" type="radio">
        <label for="menu2" class="tab-item" id="saya_menu">さや</label>

            <div class="tab-content">
                <div class="like">

                    <div class="like-box">

                        <div id="saya_satoru_like" class="like-num"></div>

                        <div class="chara-icon">
                            <img id="icon" src="./data/fgimage/icon/satoru_icon.png" >
                        </div>
                        
                        <meter id="saya_to_satoru_meter" min="0" max="100" value=""></meter>

                    </div>

                    <div class="like-box">

                        <div id="saya_onohara_like" class="like-num">20</div>

                        <div class="chara-icon">
                            <img id="icon" src="./data/fgimage/icon/onohara_icon.png" >
                        </div>
                        
                        <meter id="saya_to_onohara_meter" min="0" max="100" value="20"></meter>

                    </div>

                    <div class="like-box">

                        <div id="saya_megumi_like" class="like-num">20</div>

                        <div class="chara-icon">
                            <img id="icon" src="./data/fgimage/icon/megumi_icon.png" >
                        </div>
                        
                        <meter id="saya_to_megumi_meter" min="0" max="100" value="20"></meter>

                    </div>

                    <div class="like-box">

                        <div id="saya_miki_like" class="like-num">20</div>

                        <div class="chara-icon">
                            <img id="icon" src="./data/fgimage/icon/miki_icon.png" >
                        </div>
                        
                        <meter id="saya_to_miki_meter" min="0" max="100" value="20"></meter>

                    </div>

                </div> 
            </div>
        
        ;小野原から各キャラへの好感度
        <input id="menu3" class="tab-input" name="menu" type="radio">
        <label for="menu3" class="tab-item" id="onohara_menu">小野原</label>

            <div class="tab-content">
                <div class="like">

                    <div class="like-box">

                        <div id="onohara_satoru_like" class="like-num"></div>

                        <div class="chara-icon">
                            <img id="icon" src="./data/fgimage/icon/satoru_icon.png" >
                        </div>
                        
                        <meter id="onohara_to_satoru_meter" min="0" max="100" value=""></meter>

                    </div>

                    <div class="like-box">

                        <div id="onohara_saya_like" class="like-num">20</div>

                        <div class="chara-icon">
                            <img id="icon" src="./data/fgimage/icon/saya_icon.png" >
                        </div>
                        
                        <meter id="onohara_to_saya_meter" min="0" max="100" value="20"></meter>

                    </div>

                    <div class="like-box">

                        <div id="onohara_megumi_like" class="like-num">20</div>

                        <div class="chara-icon">
                            <img id="icon" src="./data/fgimage/icon/megumi_icon.png" >
                        </div>
                        
                        <meter id="onohara_to_megumi_meter" min="0" max="100" value="20"></meter>

                    </div>

                    <div class="like-box">

                        <div id="onohara_miki_like" class="like-num">20</div>

                        <div class="chara-icon">
                            <img id="icon" src="./data/fgimage/icon/miki_icon.png" >
                        </div>
                        
                        <meter id="onohara_to_miki_meter" min="0" max="100" value="20"></meter>

                    </div>

                </div> 
            </div>

        ;恵美から各キャラへの好感度
        <input id="menu4" class="tab-input" name="menu" type="radio">
        <label for="menu4" class="tab-item" id="megumi_menu">恵美</label>

            <div class="tab-content">
                <div class="like">

                    <div class="like-box">

                        <div id="megumi_satoru_like" class="like-num"></div>

                        <div class="chara-icon">
                            <img id="icon" src="./data/fgimage/icon/satoru_icon.png" >
                        </div>
                        
                        <meter id="megumi_to_satoru_meter" min="0" max="100" value=""></meter>

                    </div>

                    <div class="like-box">

                        <div id="megumi_saya_like" class="like-num">20</div>

                        <div class="chara-icon">
                            <img id="icon" src="./data/fgimage/icon/saya_icon.png" >
                        </div>
                        
                        <meter id="megumi_to_saya_meter" min="0" max="100" value="20"></meter>

                    </div>

                    <div class="like-box">

                        <div id="megumi_miki_like" class="like-num">20</div>

                        <div class="chara-icon">
                            <img id="icon" src="./data/fgimage/icon/miki_icon.png" >
                        </div>
                        
                        <meter id="megumi_to_miki_meter" min="0" max="100" value="20"></meter>

                    </div>

                    <div class="like-box">

                        <div id="megumi_onohara_like" class="like-num">20</div>

                        <div class="chara-icon">
                            <img id="icon" src="./data/fgimage/icon/onohara_icon.png" >
                        </div>
                        
                        <meter id="megumi_to_onohara_meter" min="0" max="100" value="20"></meter>

                    </div>

                </div> 
            </div>

        ;美希から各キャラへの好感度
        <input id="menu5" class="tab-input" name="menu" type="radio">
        <label for="menu5" class="tab-item" id="miki_menu">美希</label>

            <div class="tab-content">
                <div class="like">

                    <div class="like-box">

                        <div id="miki_satoru_like" class="like-num"></div>

                        <div class="chara-icon">
                            <img id="icon" src="./data/fgimage/icon/satoru_icon.png" >
                        </div>
                        
                        <meter id="miki_to_satoru_meter" min="0" max="100" value=""></meter>

                    </div>

                    <div class="like-box">

                        <div id="miki_megumi_like" class="like-num">20</div>

                        <div class="chara-icon">
                            <img id="icon" src="./data/fgimage/icon/megumi_icon.png" >
                        </div>
                        
                        <meter id="miki_to_megumi_meter" min="0" max="100" value="20"></meter>

                    </div>

                    <div class="like-box">

                        <div id="miki_saya_like" class="like-num">20</div>

                        <div class="chara-icon">
                            <img id="icon" src="./data/fgimage/icon/saya_icon.png" >
                        </div>
                        
                        <meter id="miki_to_saya_meter" min="0" max="100" value="20"></meter>

                    </div>

                    <div class="like-box">

                        <div id="miki_onohara_like" class="like-num">20</div>

                        <div class="chara-icon">
                            <img id="icon" src="./data/fgimage/icon/onohara_icon.png" >
                        </div>
                        
                        <meter id="miki_to_onohara_meter" min="0" max="100" value="20"></meter>

                    </div>

                </div> 
            </div>
        
        </div>

    </nav>

[endhtml]

;変数をhtml要素に代入
[Variables_Set]

;Display.js 条件によってhtml要素、表示非表示
[iscript]

;Display("miki_menu",f.satoru_to_saya_like == 1000);

[endscript]