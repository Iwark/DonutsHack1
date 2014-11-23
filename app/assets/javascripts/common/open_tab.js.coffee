# open_tab.js.coffee
# Author:: Kohei Iwasaki
# Date:: 2014-09-29
# mobile safari等でも、リンクを新しいタブで開く

window.openTab = (url)->
  # Create link in memory
  a_link = window.document.createElement("a")
  a_link.target = '_blank'
  a_link.href = url
  # Dispatch fake click
  click_event = window.document.createEvent("MouseEvents")
  click_event.initMouseEvent("click", true, true, window, 0, 0, 0, 0, 0, false, false, false, false, 0, null)
  a_link.dispatchEvent(click_event)