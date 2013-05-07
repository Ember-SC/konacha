describe("spec file isolation (A)", function () {
  it("isolates globals in one spec file from those of other spec files", function () {
    window.a_spec = true;
    assert(window.b_spec).isUndefined();
  });
});
