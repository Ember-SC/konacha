describe("spec file isolation (B)", function () {
  it("isolates globals in one spec file from those of other spec files", function () {
    window.b_spec = true;
    assert(window.a_spec).isUndefined();
  });
});
