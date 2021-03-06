ActiveAdmin.register Admin do
	index do
    column :email
    default_actions
  end

  filter :email

  form do |f|
    f.inputs "Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
