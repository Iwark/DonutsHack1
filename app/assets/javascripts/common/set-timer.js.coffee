# set-timer.js.coffee
# Author:: Kohei Iwasaki
# Date:: 2014-08-15
# Turbolinks使用時のsetTimeoutとsetInterval

timeouts = []
intervals = []

# タイマーのセット
setTimer = (func, time, isLoop) ->
  if isLoop
    tid = setInterval () ->
      func()
    , time
    intervals.push(
      "tid": tid,
      "func": func,
      "time": time,
      "isLoop": isLoop
    )
    return tid
  else
    tid = setTimeout () ->
      func()
    , time
    timeouts.push(
      "tid": tid,
      "func": func,
      "time": time,
      "isLoop": isLoop
    )
    return tid

# タイマーのクリア
$(document).on 'page:fetch', ()->
  for timer in timeouts
    clearTimeout timer["tid"]
  for timer in intervals
    clearInterval timer["tid"]
  timeouts = []
  intervals = []

if ( typeof module != 'undefined' && module.exports )
  module.exports = setTimer;
else 
  window.setTimer = setTimer;