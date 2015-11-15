class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]

  # GET /tags
  # GET /tags.json
  def index
    @image = Image.find params[:image_id]
    @tags = Tag.all
  end

  # GET /tags/1
  # GET /tags/1.json
  def show
  end

  # GET /tags/new
  def new
    @image = Image.find params[:image_id]
    @tag = Tag.new
    @tag.image_id = @image.id 
    @tag.save 
  end

  # GET /tags/1/edit
  def edit
    @tag = Tag.find params[:tag_id]
  end

  # POST /tags
  # POST /tags.json
  def create
    @tag = Tag.new(tag_params)
    @image = Image.find params[:image_id]

      if @tag.save
        redirect_to images_path, notice: 'Tag was successfully created.'
      else
        render :new 
      end
  end

  # PATCH/PUT /tags/1
  # PATCH/PUT /tags/1.json
  def update
    
    respond_to do |format|
      if @tag.update(tag_params)
        format.html { redirect_to @tag, notice: 'Tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag }
      else
        format.html { render :edit }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tags/1
  # DELETE /tags/1.json
  def destroy
    @tag.destroy
    redirect_to image_tags_url(@tag.image_id), notice: 'Rating was successfully destroyed'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag
      @tag = Tag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_params
      params.require(:tag).permit(:str, :image_id)
    end
end
