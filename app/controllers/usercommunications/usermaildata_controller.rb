require_dependency "usercommunications/application_controller"

module Usercommunications
  class UsermaildataController < ApplicationController
    before_action :set_usermaildatum, only: [:show, :edit, :update, :destroy]

    # GET /usermaildata
    def index
      @usermaildata = Usermaildatum.all
    end

    # GET /usermaildata/1
    def show
    end

    # GET /usermaildata/new
    def new
      @usermaildatum = Usermaildatum.new
    end

    # GET /usermaildata/1/edit
    def edit
    end

    # POST /usermaildata
    def create
      @usermaildatum = Usermaildatum.new(usermaildatum_params)

      if @usermaildatum.save
        redirect_to @usermaildatum, notice: 'Usermaildatum was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /usermaildata/1
    def update
      if @usermaildatum.update(usermaildatum_params)
        redirect_to @usermaildatum, notice: 'Usermaildatum was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /usermaildata/1
    def destroy
      @usermaildatum.destroy
      redirect_to usermaildata_url, notice: 'Usermaildatum was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_usermaildatum
        @usermaildatum = Usermaildatum.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def usermaildatum_params
        params.require(:usermaildatum).permit(:username, :useremail, :content)
      end
  end
end
