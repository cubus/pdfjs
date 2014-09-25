pdfjs
=====

Integrates [Mozilla's pdf.js](http://mozilla.github.io/pdf.js/) into Rails. Very much a WIP.

`gem 'pdfjs', github: 'cubus/pdfjs'`

app.js:
`//= require pdfviewer`

app.css:
`*= require viewer.css`

Add the locale files:
`<link type="application/l10n" href="/assets/pdfjs/locale/#{I18n.locale}/viewer.properties" />`

On your html element add:
`<html dir: 'ltr'>`

Use like this:

```
<div id='pdf-wrapper' style='height: 400px'>
  <%= pdf_viewer '/test.pdf' %>
</div>
```