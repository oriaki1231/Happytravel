$(function(){ 
  function buildHTML(message){
    if ( message.image ) {
      var html =`
        <div class="contents__right__main">
          <div class="text-boxz" data-message-id=${message.id}>
            <div class="text-box__name">
              ${message.user_name}
            </div>
            <div class="text-box__content">
              ${message.content}
            </div>
            <img src=${message.image} >
            <div class="text-box__date">
              ${message.created_at}
            </div>
          </div>
        </div>`
    return html;
   }else {
      var html =`
        <div class"contents__right__main">
          <div class="text-boxz" data-message-id=${message.id}>
            <div class="text-box__name">
              ${message.user_name}
            </div>
            <div class="text-box__content">
              ${message.content}
            </div>
            <div class="text-box__date">
              ${message.created_at}
            </div>
          </div>
        </div>`
    return html;
   };
 }
$('#new_soul').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
     .done(function(data){
       var html = buildHTML(data);
       $('.text-box').append(html);      
       $('form')[0].reset();
       $('.contents__right__main').animate({ scrollTop: $('.contents__right__main')[0].scrollHeight});
     })
     .fail(function() {
       alert("メッセージ送信に失敗しました");
     })
     .always(function() {
       $('.form__submit').prop('disabled', false);
     });
})
$('#new_bali').on('submit', function(e){
  e.preventDefault();
  var formData = new FormData(this);
  var url = $(this).attr('action')
  $.ajax({
    url: url,
    type: "POST",
    data: formData,
    dataType: 'json',
    processData: false,
    contentType: false
  })
   .done(function(data){
     var html = buildHTML(data);
     $('.text-box').append(html);      
     $('form')[0].reset();
     $('.contents__right__main').animate({ scrollTop: $('.contents__right__main')[0].scrollHeight});
   })
   .fail(function() {
     alert("メッセージ送信に失敗しました");
   })
   .always(function() {
     $('.form__submit').prop('disabled', false);
   });
})
$('#new_taipei').on('submit', function(e){
  e.preventDefault();
  var formData = new FormData(this);
  var url = $(this).attr('action')
  $.ajax({
    url: url,
    type: "POST",
    data: formData,
    dataType: 'json',
    processData: false,
    contentType: false
  })
   .done(function(data){
     var html = buildHTML(data);
     $('.text-box').append(html);      
     $('form')[0].reset();
     $('.contents__right__main').animate({ scrollTop: $('.contents__right__main')[0].scrollHeight});
   })
   .fail(function() {
     alert("メッセージ送信に失敗しました");
   })
   .always(function() {
     $('.form__submit').prop('disabled', false);
   });
})
$('#new_singapaul').on('submit', function(e){
  e.preventDefault();
  var formData = new FormData(this);
  var url = $(this).attr('action')
  $.ajax({
    url: url,
    type: "POST",
    data: formData,
    dataType: 'json',
    processData: false,
    contentType: false
  })
   .done(function(data){
     var html = buildHTML(data);
     $('.text-box').append(html);      
     $('form')[0].reset();
     $('.contents__right__main').animate({ scrollTop: $('.contents__right__main')[0].scrollHeight});
   })
   .fail(function() {
     alert("メッセージ送信に失敗しました");
   })
   .always(function() {
     $('.form__submit').prop('disabled', false);
   });
})
$('#new_seb').on('submit', function(e){
  e.preventDefault();
  var formData = new FormData(this);
  var url = $(this).attr('action')
  $.ajax({
    url: url,
    type: "POST",
    data: formData,
    dataType: 'json',
    processData: false,
    contentType: false
  })
   .done(function(data){
     var html = buildHTML(data);
     $('.text-box').append(html);      
     $('form')[0].reset();
     $('.contents__right__main').animate({ scrollTop: $('.contents__right__main')[0].scrollHeight});
   })
   .fail(function() {
     alert("メッセージ送信に失敗しました");
   })
   .always(function() {
     $('.form__submit').prop('disabled', false);
   });
})
$('#new_pusan').on('submit', function(e){
  e.preventDefault();
  var formData = new FormData(this);
  var url = $(this).attr('action')
  $.ajax({
    url: url,
    type: "POST",
    data: formData,
    dataType: 'json',
    processData: false,
    contentType: false
  })
   .done(function(data){
     var html = buildHTML(data);
     $('.text-box').append(html);      
     $('form')[0].reset();
     $('.contents__right__main').animate({ scrollTop: $('.contents__right__main')[0].scrollHeight});
   })
   .fail(function() {
     alert("メッセージ送信に失敗しました");
   })
   .always(function() {
     $('.form__submit').prop('disabled', false);
   });
})
$('#new_hawai').on('submit', function(e){
  e.preventDefault();
  var formData = new FormData(this);
  var url = $(this).attr('action')
  $.ajax({
    url: url,
    type: "POST",
    data: formData,
    dataType: 'json',
    processData: false,
    contentType: false
  })
   .done(function(data){
     var html = buildHTML(data);
     $('.text-box').append(html);      
     $('form')[0].reset();
     $('.contents__right__main').animate({ scrollTop: $('.contents__right__main')[0].scrollHeight});
   })
   .fail(function() {
     alert("メッセージ送信に失敗しました");
   })
   .always(function() {
     $('.form__submit').prop('disabled', false);
   });
})
$('#new_guam').on('submit', function(e){
  e.preventDefault();
  var formData = new FormData(this);
  var url = $(this).attr('action')
  $.ajax({
    url: url,
    type: "POST",
    data: formData,
    dataType: 'json',
    processData: false,
    contentType: false
  })
   .done(function(data){
     var html = buildHTML(data);
     $('.text-box').append(html);      
     $('form')[0].reset();
     $('.contents__right__main').animate({ scrollTop: $('.contents__right__main')[0].scrollHeight});
   })
   .fail(function() {
     alert("メッセージ送信に失敗しました");
   })
   .always(function() {
     $('.form__submit').prop('disabled', false);
   });
})
$('#new_hongkong').on('submit', function(e){
  e.preventDefault();
  var formData = new FormData(this);
  var url = $(this).attr('action')
  $.ajax({
    url: url,
    type: "POST",
    data: formData,
    dataType: 'json',
    processData: false,
    contentType: false
  })
   .done(function(data){
     var html = buildHTML(data);
     $('.text-box').append(html);      
     $('form')[0].reset();
     $('.contents__right__main').animate({ scrollTop: $('.contents__right__main')[0].scrollHeight});
   })
   .fail(function() {
     alert("メッセージ送信に失敗しました");
   })
   .always(function() {
     $('.form__submit').prop('disabled', false);
   });
})
$('#new_bankoku').on('submit', function(e){
  e.preventDefault();
  var formData = new FormData(this);
  var url = $(this).attr('action')
  $.ajax({
    url: url,
    type: "POST",
    data: formData,
    dataType: 'json',
    processData: false,
    contentType: false
  })
   .done(function(data){
     var html = buildHTML(data);
     $('.text-box').append(html);      
     $('form')[0].reset();
     $('.contents__right__main').animate({ scrollTop: $('.contents__right__main')[0].scrollHeight});
   })
   .fail(function() {
     alert("メッセージ送信に失敗しました");
   })
   .always(function() {
     $('.form__submit').prop('disabled', false);
   });
})
});