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

;テスト用テンション変数
[eval exp="f.saya_hp = 100"]
[eval exp="f.saya_stress = 50"]

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

;ボタンメニューの位置と画像js呼び出し
<script src="./data/scenario/script/Menu_Button.js"></script>

</head>
[endhtml]

;画面生成
[html name=screen]

;ヘルプとスケジュール、イベント時の日付
<div id="help" class="help">

    <div id="help_icon" class="help-icon">
        <img id="help_icon_img" src="./data/fgimage/icon/help.png">
    </div>

    <div id="help-data" class="help-data">
    予定を組む
    </div>

</div>

;日付
<div id="data_season" class="data-season">

    <div id="data_icon" class="data-icon">
        <img id="data_icon_img" src="./data/fgimage/icon/calender.png">
    </div>
    
    <div id="data_season_month_num" class="data_season_month_num">
        <img id="data_icon_img_one" src="./data/fgimage/icon/1.png">
        <img id="data_icon_img_two" src="./data/fgimage/icon/2.png">
    </div>
    <div id="data_season_month" class="data_season_month">月</div>
    
    <div id="data_season_week_num" class="data_season_week_num">
        <img id="data_icon_img" src="./data/fgimage/icon/1.png">
    </div>
    <div id="data_season_week" class="data_season_week">週</div>

</div>

;やる気　ストレス
<div id="tension" class="tension">

    <div id="hp" class="hp">
        <img id="hp_icon_img" src="./data/fgimage/icon/smile.png">
        <div id="hp_text" class="hp-text">
            やる気　:
        </div>
    <meter id="hp_meter" min="0" max="100" value="10"></meter>
    </div>

    
    <div id="stress" class="stress">
        <img id="stress_icon_img" src="./data/fgimage/icon/sad.png">
        <div id="stress_text" class="stress-text">
            ストレス:
        </div>
    <meter id="stress_meter" min="0" max="100" value=""></meter>
    </div>

</div>

;キャラ
<div id="chara" class="chara">
    <img id="chara" src="./data/fgimage/chara/Chara1.png">
</div>

;キャラ吹き出し
<div id="speech" class="speech">
    <img id="speech_img" src="./data/fgimage/icon/speech.png">
</div>
<div class="speech-box">
    <div id="speech_text">怒られない程度に参考にする</div>
</div>

;机
<div id="status" class="desk">
    <img id="desk_img" src="./data/fgimage/icon/desk.png">
</div>

;予定コマンド
<img id="schedule_text" src="./data/fgimage/icon/schedule_text.png">
<div id="schedule" class="schedule">
    <img id="shedule_img" src="./data/fgimage/icon/schedule.png">
</div>

;話すコマンド
<img id="talk_text" src="./data/fgimage/icon/talk_text.png">
<div id="status" class="talk">
    <img id="talk_img" src="./data/fgimage/icon/talk.png">
</div>

;セーブコマンド(休む)
<img id="save_text" src="./data/fgimage/icon/save_text.png">
<div id="status" class="save" >
    <img id="save_img" src="./data/fgimage/icon/save.png">
</div>


;ラベル名　押すとステータススライドメニュー出現　画面右側に表示の方がいい？
;<input type="checkbox" id="status-menu-toggle">
;<label class="status-btn-menu" for="status-menu-toggle">ステータス</label>

;ラベル名　押すと好感度スライドメニュー出現
<input type="checkbox" id="like-menu-toggle" onclick="Menu_Button_z()">
<label class="like-btn-menu" for="like-menu-toggle">好感度</label>

;スライドメニューの後ろをタップ防止
<div class="barrier"></div>

;ステータススライドメニュー 画面右側に表示の方がいい？
;<nav id="status-slied_box" class="status-slied-box">
;中身
;</nav>

;好感度スライドメニュー
<nav id="like-slied_box" class="like-slied-box" >
;タブメニュー
<div class="like-tab">
        
    ;主人公から各キャラへの好感度
    <input id="menu1" class="like-tab-input" name="menu" type="radio" checked="checked">
    <label for="menu1" class="like-tab-item" id="satoru_menu">主人公</label>

        <div class="like-tab-content">
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
    <input id="menu2" class="like-tab-input" name="menu" type="radio">
    <label for="menu2" class="like-tab-item" id="saya_menu">さや</label>

        <div class="like-tab-content">
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
    <input id="menu3" class="like-tab-input" name="menu" type="radio">
    <label for="menu3" class="like-tab-item" id="onohara_menu">小野原</label>

        <div class="like-tab-content">
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
    <input id="menu4" class="like-tab-input" name="menu" type="radio">
    <label for="menu4" class="like-tab-item" id="megumi_menu">恵美</label>

        <div class="like-tab-content">
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
    <input id="menu5" class="like-tab-input" name="menu" type="radio">
    <label for="menu5" class="like-tab-item" id="miki_menu">美希</label>

        <div class="like-tab-content">
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

;ラベル名　スケジュールメニュー出現
<input type="checkbox" id="schedule-select-toggle">
<label class="schedule-select-btn-command" for="schedule-select-toggle" onclick="Menu_Button_z()"></label>

<div class="schedule-barrier"></div>

;予定選択画面
<div class="schedule-select">
    <label class="schedule-select-btn-close" for="schedule-select-toggle" onclick="Menu_Button_z()"></label>


</div>
[endhtml]

;変数をhtml要素に代入
[Variables_Set]

[iscript]

;Display("miki_menu",f.satoru_to_saya_like == 1000);

Menu_Button(720, 450, true,'./data/fgimage/icon/save.png',0)

[endscript]

;[call storage="scene1.ks"]

[showmenubutton]
[s]