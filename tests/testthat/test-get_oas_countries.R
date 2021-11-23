oas_countries<-get_oas_countries()
test_that("It returns the correct dataset", {
  expect_true(nrow(oas_countries)==35,"number of rows is 35")
  expect_true(ncol(oas_countries)==1,"exactly one column")
  expect_true(names(oas_countries)=="iso3c")
  expect_true(all(c("MEX","VEN","ARG","USA") %in% oas_countries$iso3c),"Mexico, Venezuela, Argentina and USA are there")
})
