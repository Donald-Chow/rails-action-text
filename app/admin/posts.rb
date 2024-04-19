ActiveAdmin.register Post do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :body

  form do |f|
    f.inputs do
      f.input :title
      f.rich_text_body :body
    end
    f.actions
  end

  show do
    h3 post.title
    div do
      simple_format post.body
    end
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:title]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
