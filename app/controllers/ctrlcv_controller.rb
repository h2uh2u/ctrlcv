class CtrlcvController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def main
        
    end
    
    def open
        @clipboard = Clipboard.find_or_create_by(address: params[:address])
        @clipboard.update(updated_at: Time.now)
    end
    
    def write
        @clipboard = Clipboard.find_by(address: params[:address])
        @clipboard.update(text: params[:input])
        redirect_to action: 'open'
    end
end
