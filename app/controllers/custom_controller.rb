class CustomController < Devise::SessionsController
    def create
        super do |resource|
          if resource.has_role?(:admin)
            redirect_to root_path and return
          end
        end
     end
end
