
//ゲームの進行状況に合わせて、html要素を表示、非表示させる関数
function Display(ID, Condition) {
    var element = document.getElementById(ID);
    if(element) {
        if(Condition) {
            element.style.display = '';
        } else {
            element.style.display = 'none';
        } 
    }
}
