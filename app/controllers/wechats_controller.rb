class WechatsController < ApplicationController
  before_filter :check_signature

  def show
    render :text => params[:echostr]
  end

  def create
    
  end

  private
    def check_signature
      array = ['liuliang', params[:timestamp], params[:nonce]].sort
      render :text => "Forbidden", :status => 403 if params[:signature] != Digest::SHA1.hexdigest(array.join)
    end
end
