class QuizzesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :new, :destroy]
  before_action :set_quiz, only: [:edit, :show, :update, :destroy, :indexfinish , :indexfinish2]
  before_action :move_to_index_edit, only: [:edit]


  def index
    @quizzes = Quiz.all
  end

  def new
    @quiz = Quiz.new
  end

  def show
  end


  def create
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    if current_user.id == @quiz.user_id
      @quiz.destroy
      redirect_to action: :index
    end
  end

  def edit
    if current_user.id == @quiz.user_id
      render :edit
    else
      redirect_to action: :index
    end
  end

  def update
    if @quiz.update(quiz_params)
      redirect_to quiz_path(@quiz.id)
    else
      render :edit
    end
  end

  def indexfinish
  end

  def indexfinish2
  end

  private

  def set_quiz
    @quiz = Quiz.find(params[:id])
  end

  def quiz_params
    params.require(:quiz).permit(:title, :problem, :answer1, :answer2, :answer3, :answer4, :commentary,
                                 :answer_number).merge(user_id: current_user.id)
  end

  def move_to_index_edit
    redirect_to action: :index if current_user.id != @quiz.user_id
  end
end
