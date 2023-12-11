//trueで表示 falseで非表示 srcに画像url


function Menu_Button(left,top,display,src,opacity) {
    var Button = document.querySelector('.button_menu img');

    if (Button) {
        var Button_Div = Button.parentElement;
        Button_Div.style.left = left + 'px';
        Button_Div.style.top = top + 'px';
        Button_Div.style.display = display ? '' : 'none';
        Button.src = src;
        Button.style.width = '200px';
        Button.style.height = '200px';
        Button_Div.style.opacity = opacity;
    };
}

//スライドメニューを開いたときにメニューボタンの貫通を防ぐ
//ゲーム画面 class="layer layer_free" の zIndex とメニューボタンのzIndexを弄れなかったため
function Menu_Button_z() {
    var Button = document.querySelector('.button_menu img');

    if (Button) {
        var Button_Div = Button.parentElement;
        var Current_ZIndex = parseInt(Button_Div.style.zIndex, 10);

        if (Current_ZIndex === 100000000) {
            Button_Div.style.zIndex = 0;
        } else {
            Button_Div.style.zIndex = 100000000;
        }
    };
}