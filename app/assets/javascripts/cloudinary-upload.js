$('.cloudinary-fileupload').bind('cloudinarydone', function(e, data) {
  $('.preview').html(
    $.cloudinary.image(data.result.public_id,
      { format: data.result.format, version: data.result.version,
        crop: 'fill', width: 150, height: 100 })
  );
  $("#post_url").val(data.result.url)
  $("#user_profile_image_url").val(data.result.url)
  return true;
});
$('.cloudinary-fileupload').bind('fileuploadprogress', function(e, data) {
  $('.progress').removeClass('hidden')
  percent =  Math.round((data.loaded * 100.0) / data.total) + '%'
  // if(percent == "100%"){
  //   $('.progress').addClass('hidden')
  // }
  $('.progress-bar').css('width', percent);
  $('.progress-bar').text(percent);
});
