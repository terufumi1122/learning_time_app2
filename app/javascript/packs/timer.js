// var startStopFlag = 0; // スタート・ストップのフラグ
//
// var startTime; // スタート時間
// var interval;
// function clickButton(){
// var flagButton = document.getElementById('flagButton');
//
// if (startStopFlag == 0){ // スタートボタンを押した
// startTime = new Date(); // スタート時間を退避
// startStopFlag = 1;
// flagButton.value = "ストップ"
// interval = setInterval("elapsedTime()",1);
// }else{ // ストップボタンを押した
// elapsedTime();
// StartStopFlag = 0;
// flagButton.value = "スタート";
// clearInterval( interval );
// }
// }
// function elapsedTime(){
// // スタート時間と経過時間の差分を取得し、時・分・秒・ミリ秒・を抜き出していく
// var stopTime = new Date(); // 経過時間を退避
// var elapsed = stopTime.getTime() ? startTime.getTime(); // 経過時間の差分を取得
// var H = Math.floor(elapsed / (60 * 60 * 1000)); // 時間取得
// elapsed = elapsed ? (H * 60 * 60 * 1000);
// var M = Math.floor(elapsed / (60 * 1000)); // 分取得
// elapsed = elapsed ? (M * 60 * 1000);
// var S = Math.floor(elapsed / 1000); // 秒取得
// var MS = elapsed % 1000; // ミリ秒取得
// var timer = document.getElementById('timer');
// timer.value = H + ":" + M + ":" + S + ":" + MS;
// }
