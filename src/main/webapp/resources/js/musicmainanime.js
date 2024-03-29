function fadeOut(target, ma) {
	var level = 1;
	var outTimer = null;
	outTimer = setInterval( function() {
		level = fadeOutAction(target, level, outTimer, ma);
	}, 50);
}
function fadeOutAction(target, level, outTimer, ma) {
	level = level - ma;
	changeOpacity(target, level);
	if(level < 0) {
		clearInterval(outTimer);
	}
	return level;
}
function fadeIn(target, ma) {
	var level = 0;
	var inTimer = null;
	inTimer = setInterval( function() {
		level = fadeInAction(target, level, inTimer, ma);
	}, 50);
}
function fadeInAction(target, level, inTimer, ma) {
	level = level + ma;
	changeOpacity(target, level);
	if(level>1) clearInterval(inTimer);
	return level;
}
function changeOpacity(target, level) {
	var obj = target;
	obj.style.opacity = level;
	obj.style.MozOpacity = level;
	obj.style.KhtmlOpacity = level;
	obj.style.MsFilter = "'progid: DXImageTransform.Microsoft.Alpha(Opacity=" + (level * 100) + ")'";
	obj.style.filter = "alpha(opacity=" + (level * 100) + ");";
}
setTimeout(function(){
    const div = document.getElementById("symbol");
    fadeOut(div, 0.1);
	setTimeout(function(){
		document.getElementById("bgcolor").style.backgroundColor = "#221436";
		setTimeout(function(){
			document.check.submit();
		}, 650);
	}, 300);
}, 4500);