# Bluesky post script
library(atrrr)

# Authenticate 
auth(user = "owid-daily-data.bsky.social",
     password = Sys.getenv("OWID_PW"),
     overwrite = TRUE)

# Post today's screenshot
post_skeet("Today's Our World in Data Daily Data Insight.\nMore details at: https://ourworldindata.org/data-insights",
   image = "owid-shot.png")

#post_skeet("This is yet another test!")
