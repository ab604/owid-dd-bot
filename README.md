# Posting the Our World in Data Daily Data Insight to Bluesky

This bot posts a screen shot of the Our World in Data (OWID) Daily Data Insight 
to Bluesky.

## Screenshots

It uses Simon Willison's GitHub repository that takes an automated screenshot of a
OWID Daily Data Insight web page using [shot-scraper](https://github.com/simonw/shot-scraper).

Read more about how this works in 
[Instantly create a GitHub repository to take screenshots of a web page](https://simonwillison.net/2022/Mar/14/shot-scraper-template/).

[simonw/simonwillison-net-shot](https://github.com/simonw/simonwillison-net-shot) 
is an example repository created using this template.

The YAML for the OWID screenshot is defined in the `shots.yml` and the `cron` automation for 
`shot-scraper` using Github Actions is in `.github/workflows/shots.yml`

## Bluesky posting bot

Posts are done by a small R script using Johannes B. Gruber's [atrrr](https://jbgruber.github.io/atrrr/index.html) 
package and another Github actions `bot.yml` similar to my [https://github.com/ab604/prot-paper-bot](literature bot) 
to post the OWID screenshot once a day.

