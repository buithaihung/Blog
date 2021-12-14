class BlogReviewsController < ApplicationController
  before_action :set_blog_review, only: %i[ show edit update destroy ]

  # GET /blog_reviews or /blog_reviews.json
  def index
    @blog_reviews = BlogReview.all
  end

  # GET /blog_reviews/1 or /blog_reviews/1.json
  def show
  end

  # GET /blog_reviews/new
  def new
    @blog_review = BlogReview.new
  end

  # GET /blog_reviews/1/edit
  def edit
  end

  # POST /blog_reviews or /blog_reviews.json
  def create
    @blog_review = BlogReview.new(blog_review_params)
    @blog_review.user_id = current_user.id
    respond_to do |format|
      if @blog_review.save
        url = "/blogs/" + @blog_review.blog_id.to_s
        format.html { redirect_to url, notice: 'Blog comment was successfully created.' }
        format.json { render :show, status: :created, location: @blog_review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blog_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_reviews/1 or /blog_reviews/1.json
  def update
    respond_to do |format|
      if @blog_review.update(blog_review_params)
        format.html { redirect_to @blog_review, notice: "Blog review was successfully updated." }
        format.json { render :show, status: :ok, location: @blog_review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_reviews/1 or /blog_reviews/1.json
  def destroy
    @blog_review.destroy
    respond_to do |format|
      format.html { redirect_to blog_reviews_url, notice: "Blog review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_review
      @blog_review = BlogReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_review_params
      params.require(:blog_review).permit(:user_id, :blog_id, :review)
    end
end
