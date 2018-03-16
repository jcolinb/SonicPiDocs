$('.container').load("https://raw.githubusercontent.com/samaaron/sonic-pi/master/etc/doc/tutorial/01-Welcome-to-Sonic-Pi.md");

$('.container').click('.entries',function (event) {
  $(event.target).find('.content').toggleClass('hidden');
});
