class Api::V1::ContentsController < ApplicationController
  def index
    contents = Content.all
    render json: contents.map { |c| content_json(c) }
  end

  def show
    content = Content.find(params[:id])
    render json: content_json(content)
  end

  def create
    content = Content.new(content_params)

    if content.save
      content.video.attach(params[:video]) if params[:video]
      content.thumbnail_image.attach(params[:thumbnail]) if params[:thumbnail]
      render json: { message: 'Content created successfully', content: content_json(content) }, status: :created
    else
      render json: { errors: content.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    content = Content.find(params[:id])

    if content.update(content_params)
      render json: { message: 'Content updated successfully', content: content_json(content) }
    else
      render json: { errors: content.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def movies
    contents = Content.movies
    render json: contents.map { |c| content_json(c) }
  end

  def series
    contents = Content.series
    render json: contents.map { |c| content_json(c) }
  end

  private

  def content_json(content)
    {
      id: content.id,
      title: content.title,
      description: content.description,
      content_type: content.content_type,
      genre: content.genre,
      video_url: content.video_url,
      thumbnail_url: content.thumbnail_url,
      imdb_id: content.imdb_id,
      thumbnail: content.thumbnail,
      watch_url: content.watch_url,
      trailer_url: content.trailer_url,
      source: content.source
    }
  end

  def content_params
    params.require(:content).permit(
      :title,
      :description,
      :content_type,
      :genre,
      :video,
      :thumbnail,
      :imdb_id,
      :watch_url,
      :trailer_url,
      :source
    )
  end
end