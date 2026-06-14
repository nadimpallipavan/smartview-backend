class Api::V1::ProfilesController < ApplicationController
    def index
      profiles = Profile.where(user_id: params[:user_id])
      render json: profiles
    end
  
    def create
      profile = Profile.new(profile_params)
      if profile.save
        render json: { message: 'Profile created successfully', profile: profile }, status: :created
      else
        render json: { errors: profile.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def destroy
      profile = Profile.find(params[:id])
      profile.destroy
      render json: { message: 'Profile deleted successfully' }
    end
  
    def register_face
      profile = Profile.find(params[:id])
      image_data = params[:image]
      response = HTTParty.post('http://127.0.0.1:5001/register-face',
        body: { profile_id: profile.id, image: image_data }.to_json,
        headers: { 'Content-Type' => 'application/json' }
      )
      render json: response.parsed_response
    end
  
    def recognize_face
      image_data = params[:image]
      response = HTTParty.post('http://127.0.0.1:5001/recognize-face',
        body: { image: image_data }.to_json,
        headers: { 'Content-Type' => 'application/json' }
      )
      render json: response.parsed_response
    end
    def recommendations
        contents = Content.all.map { |c| { id: c.id, title: c.title, genre: c.genre, content_type: c.content_type } }
        response = HTTParty.post('http://127.0.0.1:5001/recommendations',
          body: { profile_id: params[:profile_id], contents: contents }.to_json,
          headers: { 'Content-Type' => 'application/json' }
        )
        render json: response.parsed_response
      end
    private
  
    def profile_params
      params.require(:profile).permit(:name, :user_id)
    end
  end