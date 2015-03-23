# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


main = ->
  
  
  $('form.s_login').submit ->
    
    $('.error').text ''
    
    s_email = $('#session_email').val()
    s_password = $('#session_password').val()
      
    if s_email == ''
      $('.email-error').text 'Please enter your email address'
      
    if s_password == ''
      $('.password-error').text 'Please enter a password'
    else if s_password.length < 3
      $('.password-error').text 'Try one with at least 3 characters.'
    
    $('form').unbind('submit')
    false
  return

$(document).ready(main)
$(document).on('page:load', main)