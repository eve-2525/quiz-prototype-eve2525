class QuizzesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :new, :destroy]
  before_action :set_quiz, only: [:edit, :show, :update, :destroy]


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


  def indexfinish
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


  private

  def set_quiz
    @quiz = Quiz.find(params[:id])
  end

  def quiz_params
    params.require(:quiz).permit(:title, :problem, :answer1, :answer2, :answer3, :answer4, :commentary,
                                 :answer_number).merge(user_id: current_user.id)
  end


  # def index
  #   @items = Item.all
  # end

  # def new
  #   @item = Item.new
  # end

  # def create
  #   @item = Item.new(item_params)
  #   if @item.save
  #     redirect_to root_path
  #   else
  #     render :new
  #   end
  # end

  # private

  # def item_params
  #   params.require(:item).permit(:title, :problem, :answer1, :answer2, :answer3, :answer4, :commentary,
  #                                    :answer_number).merge(user_id: current_user.id)
  # end

end
