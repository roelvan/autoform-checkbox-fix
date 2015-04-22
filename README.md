# Installation

Download or clone into the `packages` folder of your Meteor project. Then run:

`meteor add rova:autoform-checkbox-fix`

# Usage

You can apply it directly in your template:

```
{{> afFieldInput name='checkboxFieldName' type='checkbox-fix'}}
```

You can also specify it at the schema level:

```
MySchema = new SimpleSchema({
  checkboxFieldName: {
    type: Boolean
    autoform: {
      type: 'checkbox-fix'
    }
  }
});
```
