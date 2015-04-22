# Installation

Download .zip and extract into packages folder of your meteor project. Then run:

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