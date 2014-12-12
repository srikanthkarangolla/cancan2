ActiveAdmin.register User do

	index do
    column :email
    column :passord do |object|
    end
    default_actions
  end

  form do |f|
    f.inputs 'Details' do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.buttons
  end

  show do
    attributes_table do
      row :email
      row :password do
      end
    end
  end

end
