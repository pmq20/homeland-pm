module Homeland
  class PersonalMessagesController < Homeland::ApplicationController
    def index
      @items = PersonalMessage.recent.includes(:sender).page(params[:page])

      set_seo_meta(t("homeland.nav.pm"))
    end
    
    def new
      @item = PersonalMessage.new

      set_seo_meta(t("homeland.nav.new"))
    end
    
    def show
      @item = PersonalMessage.find_by(id: params[:id], receiver_id: current_user.id)
      @item.update_attribute(:read_at, Time.now)
      
      set_seo_meta(t("homeland.nav.pm"))
    end
    
    def create
      @item = PersonalMessage.new(personal_message_params)
      @item.sender = current_user

      if @item.save
        redirect_to(personal_message_path(@item.id), notice: t('homeland.pm_created'))
      else
        render action: "new"
      end
    end
    
    private

    def personal_message_params
      params.require(:personal_message).permit(:receiver_id, :title, :body)
    end
  end
end
