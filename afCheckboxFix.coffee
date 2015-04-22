checkboxValues = new ReactiveVar
checkboxValues.set []

AutoForm.addInputType 'checkbox-fix',
  template: 'afCheckboxFix'
  valueOut: -> @attr('name') in checkboxValues.get()

Template.afCheckboxFix.events
  'change .checkbox-fix': (e, template) ->
    checkboxes = checkboxValues.get()
    if $(e.target).is(':checked')
      checkboxValues.set(_.union(checkboxes, [template.checkboxName]))
    else checkboxValues.set(_.without(checkboxes, template.checkboxName))

Template.afCheckboxFix.onRendered ->
  @checkboxName = @$('input').attr 'name'