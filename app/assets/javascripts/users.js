$(document).ready(function(){
$('#user_city_id').parent().hide()
cities = $('#user_city_id').html()
$('#user_state_id').change(function(){
 state = $('#user_state_id :selected').text()
 options = $(cities).filter('optgroup[label="' + state + '"]').html()
      if (options){
        $('#user_city_id').html(options)
        $('#user_city_id').parent().show()
      }
       else{
        $('#user_city_id').empty()
        $('#user_city_id').parent().hide()
       }
})
})



