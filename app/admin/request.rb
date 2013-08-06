ActiveAdmin.register Request do
  menu priority: 2

  index do
    column :name
    column :phone
    column :email
    column :created_at do |request|
      Russian::strftime(request.created_at, "%e %B %Y")
    end
    default_actions
  end
  show do |request|
    attributes_table do
      row :name
      row :phone
      row :email
      row :notation
      row :created_at do
        Russian::strftime(request.created_at, "%e %B %Y")
      end
    end
  end
  controller do
    def resource_params
      return [] if request.get?
      [params.require(:request).permit(:name, :phone, :email, :notation)]
    end
  end
end
