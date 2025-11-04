/**
 * 页面跳转
 * @param {Object} url
 */
function jump(url) {
	console.log('jump函数被调用, URL:', url);

	if (!url || url == 'null' || url == null) {
		window.location.href = './index.html';
		return;
	}

	// 检查是否在iframe中
	if (window.parent && window.parent !== window) {
		console.log('检测到在iframe中');
		// 在iframe中，调用父窗口的navPage函数来更新导航
		var fullUrl = url.replace('../', './pages/');
		console.log('转换后的URL:', fullUrl);
		localStorage.setItem('iframeUrl', fullUrl);

		// 调用父窗口的navPage函数，这样可以同步更新导航标签
		if (window.parent.navPage && typeof window.parent.navPage === 'function') {
			console.log('调用父窗口的navPage函数');
			window.parent.navPage(fullUrl);
		} else {
			console.log('父窗口没有navPage函数，直接跳转');
			// 如果父窗口没有navPage函数，则直接设置iframe的src
			window.location.href = url;
		}
	} else {
		console.log('不在iframe中，正常跳转');
		// 不在iframe中，正常跳转
		localStorage.setItem('iframeUrl', url.replace('../', './pages/'));
		window.location.href = url;
	}
}

/**
 * 返回
 */
function back(num = -1) {
	window.history.go(num)
}

/**
 * 生成订单
 */
function genTradeNo() {
	var date = new Date();
	var tradeNo = date.getFullYear().toString() + (date.getMonth() + 1).toString() +
		date.getDate().toString() + date.getHours().toString() + date.getMinutes().toString() +
		date.getSeconds().toString() + date.getMilliseconds().toString();
	for (var i = 0; i < 5; i++) //5位随机数，用以加在时间戳后面。
	{
		tradeNo += Math.floor(Math.random() * 10);
	}
	return tradeNo;
}

/**
* 获取当前时间（yyyy-MM-dd hh:mm:ss）
*/
function getCurDateTime() {
	var currentTime = new Date(),
	year = currentTime.getFullYear(),
	month = currentTime.getMonth() + 1 < 10 ? '0' + (currentTime.getMonth() + 1) : currentTime.getMonth() + 1,
	day = currentTime.getDate() < 10 ? '0' + currentTime.getDate() : currentTime.getDate(),
	hour = currentTime.getHours(),
	minute = currentTime.getMinutes(),
	second = currentTime.getSeconds();
    return year + "-" + month + "-" + day + " " +hour +":" +minute+":"+second;
}

/**
* 获取当前日期（yyyy-MM-dd）
*/
function getCurDate() {
	var currentTime = new Date(),
	year = currentTime.getFullYear(),
	month = currentTime.getMonth() + 1 < 10 ? '0' + (currentTime.getMonth() + 1) : currentTime.getMonth() + 1,
	day = currentTime.getDate() < 10 ? '0' + currentTime.getDate() : currentTime.getDate();
    return year + "-" + month + "-" + day;
}
