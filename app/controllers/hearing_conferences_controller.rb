class HearingConferencesController < ApplicationController
  before_action :set_hearing_conference, only: [:show, :edit, :update, :destroy]


  def follow
    @user = User.find(params[:user_id])
    @hearing_conference = HearingConference.find(params[:hearing_conference_id])
    @user.follow(@hearing_conference)
    redirect_to @hearing_conference
  end

  # GET /hearing_conferences
  # GET /hearing_conferences.json
  def index
    @hearing_conferences = HearingConference.all
  end

  # GET /hearing_conferences/1
  # GET /hearing_conferences/1.json
  def show
  end

  # GET /hearing_conferences/new
  def new
    @hearing_conference = HearingConference.new
  end

  # GET /hearing_conferences/1/edit
  def edit
  end

  # POST /hearing_conferences
  # POST /hearing_conferences.json
  def create
    @hearing_conference = HearingConference.new(hearing_conference_params)
    @hearing_conference.tag_list = params[:hearing_conference][:tag_list]

    respond_to do |format|
      if @hearing_conference.save
        format.html { redirect_to @hearing_conference, notice: 'Hearing conference was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hearing_conference }
      else
        format.html { render action: 'new' }
        format.json { render json: @hearing_conference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hearing_conferences/1
  # PATCH/PUT /hearing_conferences/1.json
  def update
    @hearing_conference.tag_list = params[:hearing_conference][:tag_list]
    
    respond_to do |format|
      if @hearing_conference.update(hearing_conference_params)
        format.html { redirect_to @hearing_conference, notice: 'Hearing conference was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hearing_conference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hearing_conferences/1
  # DELETE /hearing_conferences/1.json
  def destroy
    @hearing_conference.destroy
    respond_to do |format|
      format.html { redirect_to hearing_conferences_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hearing_conference
      @hearing_conference = HearingConference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hearing_conference_params
      params.require(:hearing_conference).permit(:title, :happen_date, :count, :category_id, :location, :wiki, :description, :photo)
    end
end
