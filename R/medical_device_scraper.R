library(dplyr)
library(rvest)
library(RSelenium)

## Initalisation -- ensure docker is running!
## docker run -d -p 4445:4444 selenium/standalone-firefox

search_site <- "https://www.mdd.gov.hk/en/mdacs/search-database/list-md/index.html?page=list&page_no=1&stype=no&search=&search_value=all"
base_site <- "https://www.mdd.gov.hk/en/mdacs/search-database/list-md/index.html?page=details&id="
rd <-
    RSelenium::remoteDriver(
                   remoteServerAddr = "localhost"
                 , port = 4445L
                 , browserName = "firefox"
               )
rd$open()
rd$navigate(base_site)
Sys.sleep(10)
rd$screenshot(display = T)
