ActiveAdmin.register Manager do

  index do
    column :name do |manager|
      link_to manager.name, admin_manager_path(manager)
    end
    column :phone
    column :email
    column :number_of_tours do |manager|
      manager.tours.count
    end
    default_actions
  end

  show title: "Manager" do |manager|
    attributes_table do
      row :name
      row :phone
      row :email
      row :number_of_tours do
        manager.tours.count
      end

      row :created_at do
        Russian::strftime(manager.created_at, "%e %B %Y")
      end
    end
  end

  form html: {multipart: true} do |f|
    f.inputs do
      f.input :name
      f.input :phone
      f.input :email
      f.buttons
    end
  end

  controller do
    def resource_params
      return [] if request.get?
      [params.require(:manager).permit(:name, :phone, :email)]
    end
  end

end
