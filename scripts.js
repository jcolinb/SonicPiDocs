navbar = $('#navbar');
container = $('#container');
info = $('#info');
var test = null;
navbar.load('assets/md_sections/sections.html .header');
container.load('assets/entries.html .section');

navbar.click('.header',function (event) {
  var info_content = $(event.target).children('.info');
  if (test === info_content.text()) {
    info.children().remove();
    test = null;
  }
  else {
    info.children('.info').remove();
    info_content.clone().appendTo(info);
    info.children('.info').toggleClass('hidden');
    test = info_content.text();
  }
});

container.click('.entry',function (event) {
  $(event.target).find('.content').toggleClass('hidden');
});
