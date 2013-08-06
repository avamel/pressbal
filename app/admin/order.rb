ActiveAdmin.register Order do
  menu priority: 1

  index do
    column :name
    column :phone
    column :email
    column :tour do |order|
      link_to order.tour.title, admin_tour_path(order.tour.slug)
    end
    column :created_at do |order|
      Russian::strftime(order.created_at, "%e %B %Y")
    end
    default_actions
  end

  show do |order|
    attributes_table do
      row :name
      row :phone
      row :email
      row :notation
      row :tour do
        order.tour.title
      end
      row :created_at do
        Russian::strftime(order.created_at, "%e %B %Y")
      end
    end
  end
  controller do
    def resource_params
      return [] if request.get?
      [params.require(:order).permit(:name, :phone, :email, :notation)]
    end
  end
end


