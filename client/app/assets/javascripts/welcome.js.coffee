# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# Функция отправляет Ajax запрос на сервер, ответ отображает на странице
@req = () ->
	$("#result").text('')
	request = $.ajax(
  		url: "/welcome/send_req"
  		type: "get"
  		data: "message=" + $("#message").val()
	).done (data) ->
		result = jQuery.parseJSON(data)
		$("#result").text(result['answer'])