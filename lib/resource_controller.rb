module ResourceController
  ACTIONS          = [:index, :show, :new_action, :create, :edit, :update, :destroy].freeze
  FAILABLE_ACTIONS = ACTIONS - [:index, :new_action, :edit].freeze
  NAME_ACCESSORS   = [:model_name, :route_name, :object_name]  
  
  module ActionControllerExtension
    def resource_controller(*args)
      include ResourceController::Controller
      if args.first == :singleton
        include ResourceController::Helpers::SingletonCustomizations
      end      
    end  
  end
end