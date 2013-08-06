ActiveAdmin.register Request do
  menu priority: 2

  show do
    attributes_table do
      row :name
      row :phone
      row :email
      row :notation
    end
  end
  controller do
    def resource_params
      return [] if request.get?
      [params.require(:request).permit(:name, :phone, :email, :notation)]
    end
  end
end
