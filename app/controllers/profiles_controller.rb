class ProfilesController < ApplicationController
  # GET /profiles
  # GET /profiles.json
  def index
    @profile = current_user.profiles.first
  end

  def coffee
    @profile = current_user.profiles.first
    @profile.update_attributes(drink: "coffee")

    @profiles = Profile.where(drink: "coffee").where("user_id <> ?", current_user.id)
  end

  def martini
    @profile = current_user.profiles.first
    @profile.update_attributes(drink: "martini")

    @profiles = Profile.where(drink: "martini").where("user_id <> ?", current_user.id)
  end

  # GET /profiles/new
  def new
    @profiles = Profile.new
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profiles = current_user.profiles.new(profile_params)

    if @profiles.save
      redirect_to profiles_path, notice: 'Profile was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    @profiles = current_user.profiles.find(params[:id])

    respond_to do |format|
      if @profiles.update(profile_params)
        format.html { redirect_to profiles_path, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profiles }
      else
        format.html { render :edit }
        format.json { render json: @profiles.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:name, :age, :about_me, :profile_image_id, :user_id)
    end
end
