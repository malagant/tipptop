module NewsHelper
  def all_news
    @news_items ||= News.paginate :page => params[:page], :per_page => 2
  end
end
