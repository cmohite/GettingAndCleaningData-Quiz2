library(httr)
require(httpuv)
require(jsonlite)

oauth_endpoints("github")

myapp <- oauth_app("GETAndCleanQuiz2", "785fdb8b9b00a63e215d", secret="cbeddf81c6c76bdb6258b5de20102f89487d6baa")

github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

req <- GET("https://api.github.com/users/jtleek/repos", config(token = github_token))
stop_for_status(req)
output <- content(req)
output[[6]]$created_at