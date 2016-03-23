function loadBookmarkVue() {
  if ($("#new_bookmark").length) {
    new Vue({
      el: "#new_bookmark",
      data: {
        title: null,
        url: null,
        image: null,
        paragraph: null,
        error: null
      },

      methods: {
        urlChanged: function() {
          this.loadPage();
        },

        loadPage: function() {
          var _this = this;
          $.ajax({
            url: window.location.origin + "/crawl/" + _this.url,
            contentType: "application/json",
            dataType: "json"
          }).done(function(data) {
            _this.title = data.title;
            _this.image = data.image;
            _this.paragraph = data.paragraph;
            _this.error = null;
          }).fail(function(data) {
            _this.error = "Something went wrong."
          });
        }
      }
    });
  }
}

$(loadBookmarkVue);
$(document).on("turbolinks:load", loadBookmarkVue);
