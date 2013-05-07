#= require array_sum

describe "Array#sum (cs)", ->
  it "returns 0 when the Array is empty", ->
    assert([].sum()).equals(0);

  it "returns the sum of numeric elements", ->
    assert([1,2,3].sum()).equals(6);
