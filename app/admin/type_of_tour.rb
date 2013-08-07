ActiveAdmin.register TypeOfTour do

  index do
    column :title do |type|
      link_to type.title, admin_type_of_tour_path(type)
    end
    column :number_of_tours do |type|
      type.tours.count
    end
    default_actions
  end

  show title: "Type of tour" do |tp|
    attributes_table do
      row :title
      row :created_at do
        Russian::strftime(tp.created_at, "%e %B %Y")
      end
    end
  end

  controller do
    def resource_params
      return [] if request.get?
      [params.require(:type_of_tour).permit(:title)]
    end
  end
end
