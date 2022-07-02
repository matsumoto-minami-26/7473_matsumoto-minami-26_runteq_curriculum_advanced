namespace :article_state do
  desc '公開待ちの記事で公開日時が過去日付の場合、記事のステータスを「公開」に変更する'
  task update_article_state: :environment do
    Article.publish_wait.past_published.find_each(&:published!)
  end
end
