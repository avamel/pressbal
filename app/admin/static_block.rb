ActiveAdmin.register StaticBlock do
  form html: {multipart: true} do |f|
    f.inputs do
      f.input :block_key
      f.input :title
      f.input :content, as: :html
      f.buttons
    end
  end

  controller do
    def resource_params
      return [] if request.get?
      [params.require(:static_block).permit(:block_key, :title, :content)]
    end
  end

end
