#= require jquery

describe "the body#konacha element", ->
  it "is empty", ->
    assert($('#konacha').html()).equals ''

  it "can have content added in one test...", ->
    $('#konacha').append('<h1 id="added">New Stuff</h1>')
    assert($('#konacha h1#added').length).equals 1

  it "... that is removed before the next one starts", ->
    assert($('#konacha h1#added').length).equals 0

  it "can have an attribute added in one test...", ->
    $('#konacha').addClass('test')

  it "... that is removed before the next one starts", ->
    assert($('#konacha').hasClass('test')).isFalse

  it "is visible", ->
    assert($('#konacha').is(':visible')).isTrue
