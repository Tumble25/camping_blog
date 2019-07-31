class CommentsController < ApplicationController
  before_action :set_interview

  def new
    # we need @interview in our `simple_form_for`
    @comment = Comment.new

  end

  def create
    @interview = Interview.find(params[:interview_id])
    @comment = @interview.comments.create(comment_params.merge(user_id: current_user.id))
    @comment.interview = @interview
    @comment.save
    redirect_to interview_path(@interview)
  end

  def after_sign_in_path_for(resource_or_scope)
    stored_location_for(resource_or_scope) || super
  end

  private

  def set_interview
    @interview = Interview.find(params[:interview_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
