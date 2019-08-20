class TenantsController < ApplicationController
    def index
        @tenants = Tenant.all
    end

    def new
        @tenant = Tenant.new
    end

    def create
        Tenant.create(tenant_params)
        redirect_to root_path
    end

    private

    def tenant_params
        params.require(:tenant).permit(:name, :address, :email, :phone)
    end
end
