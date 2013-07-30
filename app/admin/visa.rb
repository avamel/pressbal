ActiveAdmin.register Visa do

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
