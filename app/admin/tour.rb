ActiveAdmin.register Tour do

  scope :all, default: true
  scope :active do |tour|
    tour.where("active IS TRUE")
  end
  scope :published do |tour|
    tour.where("published IS TRUE")
  end
  scope :not_punlished do |tour|
    tour.where("published IS FALSE")
  end

  index do
    column :active do |tour|
      if tour.active == true
        status_tag("Yes", :ok)
      else
        status_tag("No", :error)
      end
    end
    column :published do |tour|
      if tour.published == true
        status_tag("Yes", :ok)
      else
        status_tag("No", :error)
      end
    end
    column :title do |tour|
      link_to tour.title, admin_tour_path(tour)
    end
    column :countries do |tour|
      raw tour.countries.map { |x| link_to x.title, admin_country_path(x.id) }.join(', ')
    end
    column :price do |tour|
      number_to_currency(tour.price, precision: 0)
    end
    default_actions
  end

  form html: {multipart: true} do |f|
    f.inputs do
      f.input :title
      f.input :active, as: :boolean
      f.input :published, as: :boolean
      f.input :countries, as: :check_boxes
      f.input :type_of_tours, as: :check_boxes
      f.input :manager
      f.input :preview
      f.input :overview, as: :html
      f.input :price
      f.has_many :tour_images do |x|
        x.input :_destroy, as: :boolean, required: false, label: 'Remove' if x.object.id.present?
        x.input :image, as: :file, hint: f.template.image_tag(x.object.image.url(:medium)), input_html: {value: x.object.image.url(:medium)}
        x.input :active
      end
      f.buttons
    end
  end

  controller do
    def resource_params
      return [] if request.get?
      [params.require(:tour).permit(:title,:manager_id, :overview, :price, :active, :preview, :published, :country_ids => [], :type_of_tour_ids => [],
                                    tour_images_attributes: [:id, :active, :image, :_destroy])]
    end
  end
end
