# ApplicationInspector-action

Github Action for Microsoft ApplicationInspector

## Inputs

### `source-code-path`

**Required** The public url to your compiled source code, ie. https://github.com/microsoft/ApplicationInspector/tree/master/AppInspector

## Outputs

### `results`

Source code 'analyze' results.

## Example usage

```yaml
uses: jusso-dev/ApplicationInspector-action@master
with:
  source-code-path: 'https://github.com/microsoft/ApplicationInspector/tree/master/AppInspector'
```
