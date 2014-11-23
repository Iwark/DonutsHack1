# is_smart_phone.js.coffee
# Author:: Kohei Iwasaki
# Date:: 2014-09-29
# UAからスマホかどうかの判別をする

window.isSmartPhone = ()->
  UA = navigator.userAgent;
  devices = ['iPhone', 'Android', 'Mobile', 'Windows Phone', 'BlackBerry']
  for device in devices
    if UA.indexOf(device) != -1
      return true
  return false