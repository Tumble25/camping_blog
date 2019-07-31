class InterviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :edit, :update ]

  def index
    @interviews = Interview.all
  end

  def show
    @interview = Interview.find(params[:id])
    @comment = Comment.new
  end

  def new
    @interview = Interview.new
  end

  def create
    @interview = Interview.new(interview_params)
    @interview.save
    redirect_to interview_path(@interview)
  end

  def edit
    @interview = Interview.find(params[:id])
  end

  def update
    @interview = Interview.find(params[:id])
    @interview.update(interview_params)

    redirect_to interview_path(@interview)
  end

  def destroy
    @interview = Interview.find(params[:id])
    @interview.destroy

    redirect_to interviews_path
  end

   private

  def interview_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:interview).permit(:camping, :title, :content, :first_name, :last_name)
  end
end
