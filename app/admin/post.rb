ActiveAdmin.register Post do

  permit_params :title, :body, :published, :author, :author_id,:avatar,:width,:height

end

