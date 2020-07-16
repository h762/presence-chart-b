$(function(){
  $('.chartBtnA1').click(function(e){
    e.preventDefault()
    var target = $(this).text();
    if (target.match(/□/)){
      var result = target.replace("□", "■");
    }
    else {
      var result = target.replace("■", "□");
    }
    $(this).text(result);
  });

  $('.chartBtnA2').click(function(e){
    e.preventDefault()
    var target = $(this).text();
    if (target.match(/□/)){
      var result = target.replace("□", "■");
    }
    else {
      var result = target.replace("■", "□");
    }
    $(this).text(result);
  });
});