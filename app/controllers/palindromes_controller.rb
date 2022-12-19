# frozen_string_literal: true

# Palindrome controller for lab 8/11
class PalindromesController < ApplicationController
  def index; end

  def result
    @new_result = Result.find_by(input: params[:number])
    return unless @new_result.nil?

    @new_result = Result.new(input: params[:number])
    if @new_result.valid?
      @new_result.save
    else
      redirect_to '/', alert: @new_result.errors['expiration_date'][0]
    end
  end

  def show
    render xml: Result.all.as_json
  end
end
