module API
  module V1
    class Elders < Grape::API
      include API::V1::Defaults

      resource :elders do
        desc "Return all elders"
        get "", root: :elders do
          Elder.all
        end

        desc "Return a elder"
        params do
          requires :id, type: String, desc: "ID of the
            elder"
        end
        get ":id", root: "elder" do
          Elder.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end
