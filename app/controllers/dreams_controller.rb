class DreamsController < ApplicationController
    def index
      @image_url = session[:image_url]
      @error = session[:error]
    end
  
    def create
      prompt = params[:prompt]
      response = OpenAiService.generate_image(prompt)

      Rails.logger.info "OpenAI API Response: #{response}"
    
      if response.key?("error") || !response.key?("data")
        session[:error] = response["error"] || "もう一度お試しください。"
      else
        session[:image_url] = response["data"][0]["url"]
        session[:error] = nil
      end
    
      redirect_to dreams_path
    end
end
