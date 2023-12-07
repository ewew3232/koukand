function Re_Write(Targert_Variable,Target_ID){
    // 指定されたIDを持つ要素を取得
    var element = document.getElementById(Target_ID);
    // 要素が存在する場合、テキストを追加
    if (element !== null) {
        Targert_Text = Targert_Variable;
        element.textContent = Targert_Text;
    }
    else{
        console.error(Target_ID +"がない");
    }
};