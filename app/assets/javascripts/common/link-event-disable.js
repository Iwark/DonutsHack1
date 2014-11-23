/**
 
 指定した時間の間、ページ内のリンクを無効にする。

 @param interval 無効にする時間

*/

(function($) {

  $.fn.linkEventDisable = function(interval){

    self = this;
    self.addClass("link-disabled")
    self.css("pointer-events","none")

    if(interval > 0){
      setTimer(function(){
        self.removeClass("link-disabled")
        self.css("pointer-events","auto")
      }, interval, false);
    }
  }

  $.fn.linkEventEnable = function(){
    this.css("pointer-events","auto")
    this.removeClass("link-disabled")
  }

})(jQuery);