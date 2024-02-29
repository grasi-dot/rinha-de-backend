class PersonController < ApplicationController
  def create
    @person = Person.new(person_params)

    if @person.save
      render json: @person
    else
      render json: { errors: @person.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def person_params
    params.require(:person).permit(:nickname, :name, :date_of_birth, stack: [])
  end
end
