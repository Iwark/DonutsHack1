# tweet_app.js.coffee
# Author:: Kohei Iwasaki
# Date:: 2014-09-29
# スマホの場合、Twitterアプリが入っていればアプリでシェアするようにする

timeout = null           # タイマー
eventListening = false   # イベントフラグ

# 画面が遷移したらリダイレクトのイベントを中断する
preventRedirect = ->
  if timeout
    clearTimeout(timeout)
    timeout = null
    window.removeEventListener('pagehide', preventPopup)
    eventListening = false

window.tweetApp = (title, url, via)->
  # ツイートする本文
  # URLSchemeを使える場合
  url_scheme = "twitter://post?message=" + encodeURIComponent(title+' @'+via+' '+url)
  # ウィンドウで開く場合
  url_window = 'http://twitter.com/intent/tweet?text=' + encodeURIComponent(title+' @'+via) + '&url=' + encodeURIComponent(url)

  # スマホの場合
  if isSmartPhone()
    now = new Date().valueOf()

    # iframeを用いてツイッターアプリがあれば遷移させる。
    $('<iframe />').attr('src', url_scheme).attr('style', 'display:none;').appendTo('body')

    # 300ms後に新規ウィンドウで起動する
    timeout = setTimeout ()->
      openTab(url_window)
    , 300

    # 300ms以内にツイッターアプリへ遷移していたらタイマーを中止する
    if !eventListening
      window.addEventListener('pagehide', preventRedirect)
      eventListening = true

  # スマホじゃない場合
  else if !window.open(url_window, null)
    location.href = url_window
  return