# webview_js
webView的高级用法之JS交互
https://blog.csdn.net/huwei2003/article/details/82867644
简单的在webview代理方法shouldStartLoadWithRequest截取request的url，判断url来进行正常跳转还是走本地其他操作。
更复杂的例如从js中取回参数的可以用上述的方法，和后台约定好一个对象，定义遵循于JSExport的代理，双方使用同样的方法。
