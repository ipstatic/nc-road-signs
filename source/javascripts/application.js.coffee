#= require 'jquery-1.7.2'
#= require 'jquery-ui-1.8.21'
#= require 'bootstrap'

$(document).ready ->
  $(".questions").slice(1).hide()

  calculateScore = ->
    correct = $(".correct").length
    incorrect = $(".incorrect").length
    $("#results").addClass "alert alert-info"
    $("#results").append('<h4 class="alert-heading">Results</h4><span class="badge badge-success">' + correct + '</span> correct<br><span class="badge badge-important">' + incorrect + '</span> incorrect<br><br><a href="warning-signs.html" class="btn">Restart</a>')

  $("input:radio").click ->
    $(this).parents("label").siblings().removeClass "red"
    correctAnswer = $(this).parents("form").data("answer")
    chosenAnswer = Number($(this).val())

    if correctAnswer == chosenAnswer
      $(this).parents("label").addClass "green"
      $(this).parents("fieldset").find("legend").addClass "correct" unless $(this).parents("fieldset").find("legend").hasClass "incorrect"
      $(this).parents("form").find('.next').show()

    else
      $(this).parents("label").addClass "red"
      $(this).parents("fieldset").find("legend").addClass "incorrect"

  $(".next").click (e) ->
    e.preventDefault()
    $(this).hide()
    current = $(".current")
    next = current.next()

    if current.hasClass "last"
      $(".questions").show("fade", 300)
      calculateScore()
      $('html, body').animate({ scrollTop: 0 }, 0);
      $(".next").unbind()
      $("input:radio").unbind()
    else
      current.removeClass("current").hide("slide", { direction: "left" }, 400)
      next.delay(400).show("slide", { direction: "right" }, 500).addClass "current"
