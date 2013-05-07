//= require array_sum

describe("Array#sum (js)", function(){
  it("returns 0 when the Array is empty", function(){
    assert([].sum()).equals(0);
  });

  it("returns the sum of numeric elements", function(){
    assert([1,2,3].sum()).equals(6);
  });
});
