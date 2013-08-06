ActiveAdmin.register Visa do

  index do
    column :title do |visa|
      link_to visa.title, admin_visa_path(visa)
    end
    column :created_at do |order|
      Russian::strftime(order.created_at, "%e %B %Y")
    end
    default_actions
  end

  form html: {multipart: true} do |f|
    f.inputs do
      f.input :title
      f.input :overview, as: :html
      f.buttons
    end
  end
  controller do
    def resource_params
      return [] if request.get?
      [params.require(:visa).permit(:title, :overview)]
    end
  end
end
