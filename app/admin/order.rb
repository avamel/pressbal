ActiveAdmin.register Order do
  menu priority: 1

  show do |order|
    attributes_table do
      row :title
      row :phone
      row :email
      row :notation
      row order.tour.title
    end
  end
  controller do
    def resource_params
      return [] if request.get?
      [params.require(:order).permit(:title, :phone, :email, :notation)]
    end
  end
end


