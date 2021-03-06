context("Comphrehensive Test for Binary Dataset Creation")


test_that("running dataset test", {

  dd <- aif360::aif_dataset(
    data_path = system.file("extdata", "preprocessed_data.csv", package="aif360"),
    favor_label=0,
    unfavor_label=1,
    unprivileged_protected_attribute=1,
    privileged_protected_attribute=0,
    target_column="Attrition",
    protected_attribute="OverTime")

  expect_equal(dd$favorable_label, 0)
  expect_equal(dd$unfavorable_label, 1)
  expect_equal(class(dd$labels), "matrix")

})
