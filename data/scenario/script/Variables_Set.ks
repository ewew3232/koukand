;各変数をhtml要素に代入するマクロ

[macro name=Variables_Set]
[iscript]

;各キャラクター
var Characters = ['satoru', 'saya', 'onohara', 'megumi', 'miki'];

;好感度の数値
for (var i = 0; i < Characters.length; i++) {
  for (var j = 0; j < Characters.length; j++) {
    if (i !== j) { // 同じキャラクター同士の組み合わせを除外
      var Variable_Name = Characters[i] + '_to_' + Characters[j] + '_like';
      var Element_ID = Characters[i] + '_' + Characters[j] + '_like';
      Re_Write(f[Variable_Name], Element_ID);
    }
  }
}

;好感度メーター
for (var i = 0; i < Characters.length; i++) {
  for (var j = 0; j < Characters.length; j++) {
    if (i !== j) { // 同じキャラクター同士の組み合わせを除外
      var Variable_Name = Characters[i] + '_to_' + Characters[j] + '_like';
      var Element_ID = Characters[i] + '_to_' + Characters[j] + '_meter';
      document.getElementById(Element_ID).value = f[Variable_Name];
    }
  }
}

;好感度メーターの色 0-25:赤,26-50:黄,51-75:緑,75-100:青
for (var i = 0; i < Characters.length; i++) {
  for (var j = 0; j < Characters.length; j++) {
    if (i !== j) { // 同じキャラクター同士の組み合わせを除外します
      var Variable_Name = Characters[i] + '_to_' + Characters[j] + '_like';
      var Meter_ID = Characters[i] + '_to_' + Characters[j] + '_meter';
      var n = f[Variable_Name];
      if (n >= 0 && n <= 25) {
        document.getElementById(Meter_ID).style.setProperty('--meter-color', 'red');
      } else if (n >= 26 && n <= 50) {
        document.getElementById(Meter_ID).style.setProperty('--meter-color', 'yellow');
      } else if (n >= 51 && n <= 75) {
        document.getElementById(Meter_ID).style.setProperty('--meter-color', 'green');
      } else if (n >= 76 && n <= 100) {
        document.getElementById(Meter_ID).style.setProperty('--meter-color', 'blue');
      }
    }
  }
}

[endscript]
[endmacro]