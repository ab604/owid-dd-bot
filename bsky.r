# Bluesky post script
library(atrrr)
library(rvest)
library(glue)

# OWID Daily Data Insights
owid <- "https://ourworldindata.org/data-insights"

# Scrape alt-text 
alt_text <- owid |> 
  read_html() |> 
  html_elements("#most-recent-data-insight > div.data-insight-blocks > figure > picture > img") |> 
  html_attr("alt")

# Scrape daily insight link
insight_link <- owid |> 
  read_html() |>
  html_elements("#most-recent-data-insight > div:nth-child(4) > p:nth-child(6) > a:nth-child(1)") |> 
  #html_elements("#most-recent-data-insight > div:nth-child(4) > p:nth-child(7) > a:nth-child(1)") |> 
  html_attr("href")

# Create the post
post_text <- glue("Today's Our World in Data Daily Data Insight.\nMore details at: {owid}")

# Authenticate 
auth(user = "owid-daily-data.bsky.social",
     password = Sys.getenv("OWID_PW"),
     overwrite = TRUE)

# Post today's screenshot
post(post_text,
   image = "owid-shot.png",
   image_alt = alt_text)
