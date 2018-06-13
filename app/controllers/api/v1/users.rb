module API
  module V1
    class Users < Grape::API
      include API::V1::Defaults

      resource :users do
        desc "Return all users"
        get "", root: :users do
          User.all
        end

        desc "Return a user"
        params do
          requires :id, type: String, desc: "ID of the user"
        end
        get ":id", root: "user" do
          User.where(id: permitted_params[:id]).first!
        end

        desc "Return caretakers"
        params do
          requires :role_id, type: String, desc: "User's role"
        end
        get "role/:role_id", root: "user" do
          User.where(role: permitted_params[:role_id])
        end
      end
    end
  end
end
