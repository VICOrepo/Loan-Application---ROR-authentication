class CustomController < Devise::SessionsController
    def create
        super do |resource|
          if resource.user_role == 2
            redirect_to root_path and return
          end
        end
     end
end
