#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if (FALSE) {
  devtools::document()
  devtools::load_all()
  
  devtools::check_man('.')
  
  devtools::build_readme()
  pkgdown::build_site()
  
  #devtools::install(quick = TRUE, upgrade = 'never')
  devtools::run_examples()
  
  devtools::test()
  devtools::check()
  
  source(file.path('../../_packages/_dev/build_for_alm_repo.R'), echo = TRUE)
  
  .build_for_alm_repo(
    is_load     = F,
    is_document = F,
    is_readme   = F,
    is_test     = F,
    is_examples = F,
    is_check    = F,
    is_build    = TRUE)
}
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
