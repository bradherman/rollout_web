$ ->
  $("[type='checkbox']").bootstrapSwitch 
    onSwitchChange: (event, state) -> 
      name = $(event.target).attr('name')
      $.post('/rollout/flag/'+name+'?val='+state)

  options = valueNames: [ 'name' ]
  flagList = new List('flags', options)