jQuery ->
  $(window) .scroll ->
  	url = $(".pagination .next_page a").attr("href")
  	if url && $(window).scrollTop() > $(document).height() - $(window).height() - 5
  		$(".pagination").text("Fetching more images ...")
  		$.getScript(url)