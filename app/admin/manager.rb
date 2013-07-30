ActiveAdmin.register Manager do
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
