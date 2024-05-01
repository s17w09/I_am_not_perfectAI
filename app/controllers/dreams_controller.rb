class DreamsController < ApplicationController
    def index
      @image_url = session[:image_url]
      @error = session[:error]
    end
  
    def create
      prompt = params[:prompt]
      response = OpenAiService.generate_image(prompt)

      Rails.logger.info "OpenAI API Response: #{response}"
    
      if response.key?("error")
        session[:error] = response["error"]
      else
        session[:image_url] = response["data"][0]["url"]
        session[:error] = nil
      end
    
      redirect_to dreams_path
    end
end
