$ ()->
  # ボタングループへの処理
    $('.btn-toggle input[checked]').parent().addClass('active btn-primary')
    $('.btn-toggle .btn').on 'tap', (e)->

      if $(this).parent().find('.btn-primary').size() > 0
        $(this).parent().find('.btn-primary').toggleClass('btn-primary')

      $(this).toggleClass('btn-primary')