$ ->
  $("[type='checkbox']").bootstrapSwitch 
    onSwitchChange: (event, state) -> 
      $tgt = $(event.target)
      name = $tgt.attr('name')
      $.post('/rollout/flag/'+name+'?val='+state)

  $(".flag").each ->
    $this = $(this)
    $name = $('.checkbox', $this).attr('name')
    $(".slider", $this).slider
      min: 0
      max: 100
      values: parseInt($(".pct", $this).html())
      slide: (event, ui) ->
        $(".pct", $this).html ui.value
        return
      stop: (event, ui) ->
        $.post '/rollout/flag/'+$name+'?pct='+ui.value
        $chk = $('input[type=checkbox]', $this)
        if ui.value > 0
          $chk.bootstrapSwitch('state', true, true)
        else
          $chk.bootstrapSwitch('state', false, false)
        return
    return

  options = valueNames: [ 'name' ]
  flagList = new List('flags', options)