class PagesController < ApplicationController
  def contact
  end

  def about
    @students = %w(Denis Stefano Leticia Marina)

    if params[:first_letter]
      @students = @students.select { |student| student[0] == params[:first_letter] }
    end
  end

  def home
  end
end
