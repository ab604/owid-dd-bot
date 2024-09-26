# Bluesky post script
library(atrrr)
library(rvest)

# Scrape alt-text 
alt_text <- "https://ourworldindata.org/data-insights" |> 
  read_html() |> 
  html_elements("#most-recent-data-insight > div.data-insight-blocks > figure > picture > img") |> 
  html_attr("alt")

# Authenticate 
auth(user = "owid-daily-data.bsky.social",
     password = Sys.getenv("OWID_PW"),
     overwrite = TRUE)

# Post today's screenshot
post_skeet("Today's Our World in Data Daily Data Insight.\nMore details at: https://ourworldindata.org/data-insights",
   image = "owid-shot.png",
   image_alt = alt_text)

