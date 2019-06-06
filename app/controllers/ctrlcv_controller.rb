class CtrlcvController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def main
        
    end
    
    def open
        @clipboard = Clipboard.find_or_create_by(address: params[:address])
    end
end
