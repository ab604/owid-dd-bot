# Tuesday repost
library(atrrr)
library(glue)
library(dplyr)
library(readr)
library(lubridate)
library(stringr)
source("R/get-post-uri-by-date.R")
source("R/repost.R")

# Get Sunday post
post_uri <- get_post_uri_by_date(
  handle = "@owid-daily-data.bsky.social", 
  target_date = Sys.Date(),  #Today date
  username =  "@owid-daily-data.bsky.social", 
  app_password =  Sys.getenv("OWID_PW"))

# Repost
repost(
  post_uri, 
  username = "@owid-daily-data.bsky.social", 
  app_password = Sys.getenv("OWID_PW"))
