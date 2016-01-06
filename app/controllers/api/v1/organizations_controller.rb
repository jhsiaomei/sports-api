class Api::V1::OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all
  end

  def show
    @organization = Organization.find_by(id: params[:id])
  end

  def create
    @organization = Organization.new(
      school: params[:school],
      name: params[:name],
      color: params[:color],
      logo: params[:logo],
      motto: params[:motto]
      )
    if @organization.save
      render json: { message: "Success!" }
    else
      render json: { errors: @organization.errors.full_messages }, status: 422
    end
  end

  def update
    @organization = Organization.find_by(id: params[:id])
    @organization.update(
      id: params[:id] || @organization.id,
      school: params[:school] || @organization.school,
      name: params[:name] || @organization.name,
      color: params[:color] || @organization.color,
      logo: params[:logo] || @organization.logo,
      motto: params[:motto] || @organization.motto
      )
    render :show
  end

  def destroy
    @organization = Organization.find_by(id: params[:id])
    @organization.destroy
    @organizations = Organization.all
    render json: {message: "You deleted this organization"}
  end
end
