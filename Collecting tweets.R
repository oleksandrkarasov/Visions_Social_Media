library(academictwitteR)
get_bearer()
set_bearer()

visions_biodiversity5 <-
  get_all_tweets(
    query = c("vision biodiversity", "vision environment", 
              "vision nature", "vision ecosystem", "future environment",
              "future biodiversity", "future nature"),
    exclude = c("computer", "binance", 
                "blockchain", "token", "money",
                "metacoin", "coin", "rewards", "metaairdrop","metatime",
                "metatimecoin", "copyclick", "iot"),
    is_retweet = FALSE,
    start_tweets = "2013-05-25T00:00:00Z",
    end_tweets = "2023-05-25T00:00:00Z",
    data_path = "C:/Users/karas/twitter_visions/",
    remove_promoted = TRUE,
    has_cashtags = FALSE,
    lang = "en",
    file = "twitter_vision_biodiversity",
    n = 500000
  )

vis_biodiversity5 <- visions_biodiversity5[,c("author_id","lang", "id", "text", "created_at", "in_reply_to_user_id")]
write.csv(visions_biodiversity5,file='C:/Users/karas/twitter_visions/biodiversity_500000full.csv', row.names=FALSE)
