# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  
  $('form.new_user').submit ->
    
    $('.error').text ''
    
    name = $('#user_name').val()
    email = $('#user_email').val()
    password = $('#user_password').val()
    
    if name == ''
      $('.name-error').text 'Please enter your first name.'
    if email == ''
      $('.email-error').text 'Please enter your email address.'
    if password == ''
      $('.password-error').text 'Please enter a password.'
    else if password.length < 4
      $('.password-error').text 'Try one with at least 4 characters.'
    
    $('form').unbind('submit')  
    false
  return

$(document).ready(ready)
$(document).on('page:load', ready)
