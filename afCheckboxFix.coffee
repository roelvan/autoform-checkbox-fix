checkboxValues = new ReactiveVar
checkboxValues.set []

AutoForm.addInputType 'checkbox-fix',
  template: 'afCheckboxFix'
  valueOut: -> @attr('name') in checkboxValues.get()
  contextAdjust = (context) ->
    if context.value istrue
      context.atts.checked = ''
    delete context.atts.required
    context

Template.afCheckboxFix.events
  'change .checkbox-fix': (e, template) ->
    checkboxes = checkboxValues.get()
    if $(e.target).is(':checked')
      checkboxValues.set(_.union(checkboxes, [template.checkboxName]))
    else checkboxValues.set(_.without(checkboxes, template.checkboxName))

Template.afCheckboxFix.onRendered ->
  checkbox = @$('input')
  @checkboxName = checkbox.attr 'name'
  checkboxes = checkboxValues.get()
  if @data.value
    checkbox.prop 'checked', true
    checkboxValues.set(_.union(checkboxes, [@checkboxName]))
  else
    checkbox.prop 'checked', false
    checkboxValues.set(_.without(checkboxes, @checkboxName))