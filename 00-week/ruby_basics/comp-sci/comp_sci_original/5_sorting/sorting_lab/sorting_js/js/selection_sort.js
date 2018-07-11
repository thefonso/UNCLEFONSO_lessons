var cleaned_text;

function grabAndCleanText(callback) {
  $.getJSON('http://hipsterjesus.com/api/?type=hipster-centric&html=false', function(data) {
    //Remove periods
    var hipsterText = data.text.replace(/\./g, "");
    //Replace line breaks with newlines
    hipsterText = hipsterText.replace(/(\r\n|\n|\r)/gm," ");
    //Remove duplicate spaces
    cleanedText = hipsterText.replace(/  /g, ' ');
  }).done(callback);
}

$(function() {
  grabAndCleanText(function() {
    // Stuff that can happen only after the text is returned
    console.log(cleaned_text);
  });
});