function runClipboard() {
  new Clipboard(".btn-clipboard");
}

$(runClipboard);
$(document).on('turbolinks:load', runClipboard);
