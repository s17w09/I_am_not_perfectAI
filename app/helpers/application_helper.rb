module ApplicationHelper
  def page_title(title = "")
    base_ttitle = "I'm a NOT PERFECT AI"
    if title.empty?
      base_ttitle
    else
       "#{title} | #{base_ttitle}"
    end
  end

    def default_meta_tags
      {
        # Twitter用の設定を個別で設定する
        twitter: {
          card: 'summary_large_image', # Twitterで表示する場合は大きいカードにする
          image: image_url('ogp.png') # 配置するパスやファイル名によって変更すること
        }
      }
    end
end
