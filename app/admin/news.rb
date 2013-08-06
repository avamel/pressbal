ActiveAdmin.register News do

  scope :all, default: true
  scope :published do |news|
    news.where("published IS TRUE")
  end
  scope :not_punlished do |news|
    news.where("published IS FALSE")
  end

  index do
    column :published do |news|
      if news.published == true
        status_tag("Yes", :ok)
      else
        status_tag("No", :error)
      end
    end
    column :title do |news|
      link_to news.title, admin_news_path(news)
    end
    column :created_at do |news|
      Russian::strftime(news.created_at, "%e %B %Y")
    end
    default_actions
  end

  form html: {multipart: true} do |f|
    f.inputs do
      f.input :title
      f.input :published, as: :boolean
      f.input :content, as: :html
      f.buttons
    end
  end

  show title: "News" do |news|
    attributes_table do
      row :title
      row :published do
        if news.published == true
          status_tag("Yes", :ok)
        else
          status_tag("No", :error)
        end
      end
      row :content do
        raw news.content
      end
      row :created_at do
        Russian::strftime(news.created_at, "%e %B %Y")
      end
    end
  end

  controller do
    def resource_params
      return [] if request.get?
      [params.require(:news).permit(:title, :content, :published)]
    end
  end
end
