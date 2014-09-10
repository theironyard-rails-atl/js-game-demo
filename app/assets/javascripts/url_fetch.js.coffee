$ ->
  $('.entries').append $ '<li>This is coming from url_fetch</li>'

  $('.fetch-url').click ->
    url = $('.url').val()

    # Using $.get
    #$.get url, (resp) ->
    #  console.log "response was", resp

    # $.ajax(url, {
    #   type: 'GET',
    #   success: function() { ... }
    # });
    $.ajax url,
      type: 'GET'
      success: (resp) ->
        $('.url-result').text JSON.stringify resp
      error: ->
        alert 'There was an error'
