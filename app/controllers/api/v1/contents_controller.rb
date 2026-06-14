class Api::V1::ContentsController < ApplicationController
    def index
      contents = Content.all
      render json: contents.map { |c|
        {
          id: c.id,
          title: c.title,
          description: c.description,
          content_type: c.content_type,
          genre: c.genre,
          video_url: c.video_url,
          thumbnail_url: c.thumbnail_url,
          imdb_id: c.imdb_id,
          thumbnail: c.thumbnail
        }
      }
    end
  
    def show
      content = Content.find(params[:id])
      render json: {
        id: content.id,
        title: content.title,
        description: content.description,
        content_type: content.content_type,
        genre: content.genre,
        video_url: content.video_url,
        thumbnail_url: content.thumbnail_url,
        imdb_id: content.imdb_id,
        thumbnail: content.thumbnail
      }
    end
  
    def create
      content = Content.new(content_params)
      if content.save
        content.video.attach(params[:video]) if params[:video]
        content.thumbnail_image.attach(params[:thumbnail]) if params[:thumbnail]
        render json: { message: 'Content created successfully', content: content }, status: :created
      else
        render json: { errors: content.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def update
      content = Content.find(params[:id])
      if content.update(content_params)
        render json: { message: 'Content updated successfully', content: content }
      else
        render json: { errors: content.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def movies
      contents = Content.movies
      render json: contents
    end
  
    def series
      contents = Content.series
      render json: contents
    end
  
    private
  
    def content_params
      params.require(:content).permit(:title, :description, :content_type, :genre, :video, :thumbnail, :imdb_id)
    end
  end