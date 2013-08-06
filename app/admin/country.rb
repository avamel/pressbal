ActiveAdmin.register Country do

  index do
    column :title, sortable: 'title' do |country|
      link_to country.title, admin_country_path(country)
    end
    column :number_of_tours do |country|
      country.tours.count
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
      [params.require(:country).permit(:title, :overview)]
    end
  end

end
