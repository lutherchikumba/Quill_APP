class FeaturedTopicsController < ApplicationController
  before_action :set_featured_topic, only: [:show, :edit, :update, :destroy]

  # GET /featured_topics
  # GET /featured_topics.json
  def index
    @featured_topics = FeaturedTopic.all
  end

  # GET /featured_topics/1
  # GET /featured_topics/1.json
  def show
  end

  # GET /featured_topics/new
  def new
    @featured_topic = FeaturedTopic.new
  end

  # GET /featured_topics/1/edit
  def edit
  end

  # POST /featured_topics
  # POST /featured_topics.json
  def create
    @featured_topic = FeaturedTopic.new(featured_topic_params)

    respond_to do |format|
      if @featured_topic.save
        format.html { redirect_to @featured_topic, notice: 'Featured topic was successfully created.' }
        format.json { render :show, status: :created, location: @featured_topic }
      else
        format.html { render :new }
        format.json { render json: @featured_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /featured_topics/1
  # PATCH/PUT /featured_topics/1.json
  def update
    respond_to do |format|
      if @featured_topic.update(featured_topic_params)
        format.html { redirect_to @featured_topic, notice: 'Featured topic was successfully updated.' }
        format.json { render :show, status: :ok, location: @featured_topic }
      else
        format.html { render :edit }
        format.json { render json: @featured_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /featured_topics/1
  # DELETE /featured_topics/1.json
  def destroy
    @featured_topic.destroy
    respond_to do |format|
      format.html { redirect_to featured_topics_url, notice: 'Featured topic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_featured_topic
      @featured_topic = FeaturedTopic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def featured_topic_params
      params.require(:featured_topic).permit(:topic)
    end
end
