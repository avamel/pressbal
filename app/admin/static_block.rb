ActiveAdmin.register StaticBlock do

  index do
    column :block_key
    column :title do |st|
      link_to st.title, admin_static_block_path(st)
    end
    column :content do |st|
      truncate(strip_tags(st.content), length: 80)
    end
    column :created_at do |st|
      Russian::strftime(st.created_at, "%e %B %Y")
    end
    default_actions
  end
  form html: {multipart: true} do |f|
    f.inputs do
      f.input :block_key
      f.input :title
      f.input :content, as: :html
      f.buttons
    end
  end

  show title: "Static block" do |st|
    attributes_table do
      row :block_key
      row :title
      row :content do
        raw st.content
      end
      row :created_at do
        Russian::strftime(st.created_at, "%e %B %Y")
      end
    end
  end

  controller do
    def resource_params
      return [] if request.get?
      [params.require(:static_block).permit(:block_key, :title, :content)]
    end
  end

end
