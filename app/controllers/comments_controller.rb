class CommentsController < ApplicationController
  before_action :set_interview

  def new
    # we need @interview in our `simple_form_for`
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    # we need `interview_id` to asssociate comments with corresponding interview
    @comment.interview = @interview
    @comment.save
    redirect_to interview_path(@interview)
  end

  private

  def set_interview
    @interview = Interview.find(params[:interview_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end

end
