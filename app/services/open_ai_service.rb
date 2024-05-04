class OpenAiService
  include HTTParty

  base_uri 'https://api.openai.com/v1'

  def self.generate_image(prompt, size="1024x1024", quality="standard", n=1)
    begin
      response = post('/images/generations',
                      headers: { 
                        'Authorization' => "Bearer #{ENV['OPENAI_API_KEY']}",
                        'Content-Type' => 'application/json'
                      },
                      body: { 
                        model: 'dall-e-3', 
                        prompt: 'illustration like American comic taste and sentense that gives users one shot gag in English.',
                        size: size, 
                        quality: quality, 
                        n: n 
                      }.to_json)
      raise "Error: #{response.code} - #{response.message}" unless response.success?

      response.parsed_response
    rescue => e
      { error: e.message }
    end
  end
end
